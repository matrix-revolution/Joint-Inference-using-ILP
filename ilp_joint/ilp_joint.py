"""
Created on Wed Nov  4 20:40:52 2015

@author: shalini
"""
import sys
from gurobipy import *
import utils.role_scores as rs
import cPickle as pickle

roles = ["UNDERGOER", "ENABLER", "TRIGGER", "RESULT"]
similarity = pickle.load(open("utils/similarity.p", "rb"))

def get_sentences():
	return rs.sentence_to_id.keys()


def get_sentence_id(sentence):
	return rs.sentence_to_id[sentence]


def get_sentence_args(sentence):
	s_id = rs.sentence_to_id[sentence]
	return rs.sentence_to_args[s_id]


def get_role_scores(sentence, arg, role):
	s_id = rs.sentence_to_id[sentence]
	return rs.arg_role_scores[s_id, arg][role]


def get_similarity_score(arg1, arg2):
	return similarity[arg1, arg2]


def joint_inference_ilp():
    # Integer Linear Programming for Joint Inference.
	sentences = get_sentences()
	no_of_sentences = len(sentences)

	lambda_1 = 0.5
	lambda_2 = 0.5

	role_score_vars = {}
	label_indicator = {}

	lp = Model('srl_ilp')

	for s_id, sentence in enumerate(sentences):
		args = get_sentence_args(sentence)
		for a_id, arg in enumerate(args):
			for r_id, role in enumerate(roles):
				role_score = get_role_scores(sentence, arg, role)
				# data: role classifier scores
				role_score_vars[s_id, a_id, r_id] = role_score
				# add indicator variable
				label_indicator[s_id, a_id, r_id] = lp.addVar(vtype=GRB.BINARY, name='Z_'+str(s_id)+str(a_id)+str(r_id))

	# data: similarity scores
	similarity_score_vars = similarity

	lp.update()

    # generate the objective function to maximize the score
	obj = QuadExpr()
	for r_id, role in enumerate(roles):
		for s_id1, sentence1 in enumerate(sentences):
			args1 = get_sentence_args(sentence1)
			for a_id1, arg1 in enumerate(args1):
				tmp = 0
				for s_id2, sentence2 in enumerate(sentences):
					args2 = get_sentence_args(sentence2)
					for a_id2, arg2 in enumerate(args2):
						if s_id1 != s_id2:
							tmp += label_indicator[s_id2, a_id2, r_id] * float(similarity_score_vars[arg1, arg2])
				obj += label_indicator[s_id1, a_id1, r_id] * ((float(role_score_vars[s_id1, a_id1, r_id]) * lambda_1) + (lambda_2 * tmp))

	lp.setObjective(obj, GRB.MAXIMIZE)
	lp.update()

    # Constraints
	# 1. Every word must take only one role
	for s_id, sentence in enumerate(sentences):
		args = get_sentence_args(sentence)
		for a_id, arg in enumerate(args):
			lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for r_id in range(len(roles))]) <= 1, 'constraint1_' + str(s_id) + str(a_id))

	# 2. Every role must occur only once in the sentence
	for s_id, sentence in enumerate(sentences):
		for r_id, role in enumerate(roles):
			lp.addConstr(quicksum([label_indicator[s_id, a_id, r_id] for a_id in range(len(get_sentence_args(sentence)))]) <= 1, 'constraint2_' + str(s_id) + str(r_id))

	lp.optimize()
	lp.write('output/ilp.lp')
	lp.write('output/ilp.sol')
	lp.write('output/ilp.mps')


	# Print values of indicator variable which will indicate the role assigned
	for var in lp.getVars():
		print var.varName, var.x

def main():
	joint_inference_ilp()


if __name__ == '__main__':
	main()

