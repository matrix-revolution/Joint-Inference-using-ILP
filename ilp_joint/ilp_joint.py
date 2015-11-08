# -*- coding: utf-8 -*-
"""
Created on Wed Nov  4 20:40:52 2015

@author: shalini
"""


import sys
from gurobipy import *
from generate_similarity_score import *

def joint_inference_ilp():
    """
    Integer Linear Programming for Joint Inference.
    
    Initialize :-
    Read role_scorer.txt and initialize the matrix with row as number of word spans in each sentence 
    and column as total number of sentences
    """
    
    if len(sys.argv) < 1:
        quit()

    f = open(sys.argv[1])
    lines = f.readlines()
    tokens = lines[0].replace(';', '').replace(' ','').split(',')
    if(len(tokens) != 2):
        print('Invalid input format')
        quit()
    
    no_of_words = int(tokens[1])
    no_of_sentences = int(tokens[0])

    role_score_vars = {}
    label_assigned = {}
    model = Model('ilp_joint')

    """
    Role Classifier scorer:-
    Generate role score for each word span and store in the list 'role_score_vars'.
    Add indicator variable 'Z' in the model 
    """
    
    for i in range(0, no_of_words):
        line = lines[i+1]
        tokens = line.replace('\n','').split(';')
        
        for j in range(0, no_of_sentences):
            list_numbers = tokens[j].split(',')
            lists = [0 for l in range(len(list_numbers))]
            
            for k in range(0, len(list_numbers)):
                role_val = list_numbers[k]
                lists[k] = role_val
                role_score_vars[i,j,k+1] = role_val
                label_assigned[i,j,k+1] = model.addVar(vtype=GRB.BINARY, name='Z_'+str(i)+str(j)+'_'+str(k+1))
            
        
    model.update()
    
    """
    Similarity scorer:-
    Calculate manually the similarity score of each word span across all sentences.
    """
    similarity_score_vars = {}
    similarity_score_vars = similarity_score_classifier()       
    
    
    model.update()


    """
    other variables are weights lambda_1 and lambda_2
    """
    lambda_1 = 0.5
    lambda_2 = 0.5
    
    """
    Generate the objective function to maximize the score 
    """
    
    obj = LinExpr()
    
    for role in range(1,5):
        
        for ii in range(0, no_of_words):
             
            for jj in range(0, no_of_sentences):
                obj += label_assigned[ii,jj,role] * role_score_vars[ii,jj,role] * lambda_1
                
                for ll in range(0, no_of_words):
                    
                    for mm in range(jj+1, no_of_sentences):
                        obj += label_assigned[ll,mm,role] * similarity_score_vars[ii,jj,ll,mm,role] * lambda_2
    
    
    model.setObjective(obj, GRB.MAXIMIZE)
    model.update()
    
    """
    Add Constraints
    """
    
    """
    Every word must take only one role
    """
    for j2 in range(0, no_of_sentences):
        
        for i2 in range(0, no_of_words):
            model.addConstr(quicksum([label_assigned[i2,j2,k2] for k2 in range(1,5)]) <=1,
                        'constraint1_' + str(i2) + '_' + str(j2))
        
    """
    Every role must occur only once in the sentence
    """
    
    for j1 in range(0, no_of_sentences):
        
        for k1 in range(1,5):
            model.addConstr(quicksum([label_assigned[i1,j1,k1] for i1 in range(0, no_of_words)])==1, 'constraint2_'+str(j1)+'_'+str(k1)) 
            
    model.optimize()
    
    model.write('ilp_joint_output.lp')
    
    """
    Print values of indicator variable which will indicate the role assigned
    """
    
    for v in model.getVars():
        print v.varName, v.x

def main():
    joint_inference_ilp()
    
if __name__ == "__main__":
    main()
