import json
from gurobipy import *
from collections import defaultdict
from  utils import entailment
import numpy as np


#TODO: Modularize code into different files and make it easy to configure based
# on a config file

# roles = ['undergoer', 'enabler', 'trigger', 'result']
roles = ['undergoer', 'enabler', 'trigger', 'result', 'underspecified']

def get_sentences(p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    return [(v, k) for k, v in sent_to_id.iteritems()]

def get_sentence_from_id(s_id, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_map =  {v: k for k, v in sent_to_id.items()}
    return s_map[s_id]

def get_sentence_args(sentence, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_id = sent_to_id[sentence]
    return id_to_args[s_id]


def get_role_scores(sentence, arg_id, role, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    s_id = sent_to_id[sentence]
    return arg_role_scores[s_id, arg_id][role]


def get_similarity_score(arg1, arg2):
    ret = entailment.get_ai2_textual_entailment(arg1, arg2)
    a_scores = map(lambda x: x['score'], ret['alignments'])
    if len(a_scores):
        mean_a_score = np.mean(a_scores)
    else:
        mean_a_score = 0

    confidence = ret['confidence'] if ret['confidence'] else 0
    score1 = mean_a_score * confidence

    ret = entailment.get_ai2_textual_entailment(arg2, arg1)
    a_scores = map(lambda x: x['score'], ret['alignments'])
    if len(a_scores):
        mean_a_score = np.mean(a_scores)
    else:
        mean_a_score = 0

    confidence = ret['confidence'] if ret['confidence'] else 0
    score2 = mean_a_score * confidence
    return max(score1, score2)


def joint_inference_ilp(process, p_data):
    # Integer Linear Programming for Joint Inference.
    sentences = get_sentences(p_data)

    lambda_1 = 0.5
    lambda_2 = 0.5

    role_score_vars = {}
    label_indicator = {}

    lp = Model(process+'_srl_ilp')

    for s_id, sentence in sentences:
        args = get_sentence_args(sentence, p_data)
        for a_id, arg in args:
            for r_id, role in enumerate(roles):
                role_score = get_role_scores(sentence, a_id, role, p_data)
                # data: role classifier scores
                role_score_vars[s_id, a_id, r_id] = role_score
                # add indicator variable
                label_indicator[s_id, a_id, r_id] = lp.addVar(vtype=GRB.BINARY,
                                                              name='Z_' + str(s_id) + '_' + str(a_id) + '_' + str(r_id))

    lp.update()

    # generate the objective function to maximize the score
    obj = QuadExpr()
    for r_id, role in enumerate(roles):
        for s_id1, sentence1 in sentences:
            args1 = get_sentence_args(sentence1, p_data)
            for a_id1, arg1 in args1:
                tmp = 0
                for s_id2, sentence2 in sentences:
                    args2 = get_sentence_args(sentence2, p_data)
                    for a_id2, arg2 in args2:
                        if s_id1 != s_id2:
                            tmp += label_indicator[s_id2, a_id2, r_id] * float(get_similarity_score(arg1, arg2))
                obj += label_indicator[s_id1, a_id1, r_id] * ((float(role_score_vars[s_id1, a_id1, r_id]) * lambda_1) + (lambda_2 * tmp))

    lp.setObjective(obj, GRB.MAXIMIZE)
    lp.update()

    # Constraints
    # 1. Every word must take only one role
    for s_id, sentence in sentences:
        args = get_sentence_args(sentence, p_data)
        for a_id, arg in args:
            lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for r_id in range(len(roles))]) <= 1, 'constraint1_' + str(s_id) + str(a_id))

    # 2. Every role must occur only once in the sentence
    for s_id, sentence in sentences:
        for r_id, role in enumerate(roles):
            lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for a_id, arg in get_sentence_args(sentence, p_data)]) <= 1, 'constraint2_' + str(s_id) + str(r_id))

    lp.optimize()
    lp.write('output/'+process+'_ilp.lp')
    lp.write('output/'+process+'_ilp.sol')
    lp.write('output/'+process+'_ilp.mps')

    return [(var.varName, var.x) for var in lp.getVars()]

def get_ilp_assignment(lp_vars, p_data):
    sent_to_id, id_to_args, arg_role_scores = p_data
    sentences = sent_to_id.keys()

    output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    for var, ind in lp_vars:
        ids = var.split('_')
        s_id = int(ids[1])
        a_id = int(ids[2])
        r_id = int(ids[3])
        output_map[s_id][a_id][r_id] = int(ind)

    # for s_id, val in output_map.iteritems():
        # print "Sentence: ", get_sentence_from_id(s_id, p_data)
        # args = id_to_args[s_id]
        # for a_id, aval in val.iteritems():
            # arg = dict(args)[a_id]
            # for r_id, i in aval.iteritems():
                # if i == 1:
                    # print "\t", arg, " - ", roles[r_id]
        # print " "
    return output_map

def load_srl_data():
    d = json.load(open("data/test.srlpredict.json", "r"))
    data = {}
    for p_data in d:
        process = p_data['process']
        ss_data = p_data['sentences']
        sent_to_id = {}
        id_to_args = {}
        arg_role_scores = {}
        arg_role_srl_data = {}
        for s_data in ss_data:
            sentence = s_data['text']
            s_id = s_data['sentenceId']
            sent_to_id[sentence] = s_id
            a_spans = s_data['predictionArgumentSpan']
            args = []
            for a_span in a_spans:
                srl_role_prediction = a_span['rolePredicted']
                start_idx = a_span['startIdx']
                end_idx = a_span['endIdx']
                arg_text = a_span['text']
                arg_id = a_span['argId']
                role_prob_list = a_span['probRoles']
                args.append((arg_id, arg_text))
                role_probs = {}
                for role_prob in role_prob_list:
                    role_probs.update(role_prob)
                arg_role_scores[(s_id, arg_id)] = role_probs
                arg_role_srl_data[(s_id, arg_id)] = [srl_role_prediction, start_idx, end_idx]
            id_to_args[s_id] = args
        data[process] = [sent_to_id, id_to_args, arg_role_scores, arg_role_srl_data]
    return data

def dump_ilp_json(data, ilp_data):
    j_dump_data = []
    for process in data.keys():
        # list of sentences
        sent_list = []
        sent_to_id, id_to_args, arg_role_scores, arg_role_srl_data = data[process]
        for sentence_text, s_id in sent_to_id.iteritems():
            # list of args
            arg_list = []
            for arg_id, arg_text in id_to_args[s_id]:
                srl_role_prediction, start_idx, end_idx = arg_role_srl_data[(s_id, arg_id)]
                # list of probs
                role_probs = map(lambda x: dict([x]), arg_role_scores[(s_id, arg_id)].items())
                # print "-----"
                ilp_r_vals = ilp_data[process][s_id][arg_id]
                ilp_i_vals =  {v: k for k, v in ilp_r_vals.items()}
                # print sentence_text
                # print arg_text
                # print role_probs
                # print srl_role_prediction
                # print ilp_r_vals
                # print ilp_i_vals
                # print roles[ilp_i_vals[1]]
                # print "-----\n\n"
                if 1 in ilp_i_vals:
                    ilp_role = roles[ilp_i_vals[1]]
                else:
                    ilp_role = "NONE"
                arg_list.append({'argId': arg_id, 'text': arg_text,
                    'rolePredicted': ilp_role, 'startIdx': start_idx, 'endIdx': end_idx, 'probRoles': role_probs})
            sent_list.append({'sentenceId': s_id, 'text': sentence_text,
                'predictionArgumentSpan': arg_list})
        j_dump_data.append({'process': process, 'sentences': sent_list})
    with open('output/ilp_predict.json', 'w') as fp:
            json.dump(j_dump_data, fp, indent=4)

def main():
    data = load_srl_data()
    processes = data.keys()
    ilp_data = {}
    for process in processes:
        lp_vars = joint_inference_ilp(process, data[process][:3])
        ilp_map = get_ilp_assignment(lp_vars, data[process][:3])
        ilp_data[process] = ilp_map
    dump_ilp_json(data, ilp_data)
    print "Done!"

if __name__ == '__main__':
    main()
