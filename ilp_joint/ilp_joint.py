# -*- coding: utf-8 -*-
"""
Created on Wed Nov  4 20:40:52 2015

@author: shalini
"""
# Integer Linear Programming for Joint Inference.

# Initialize :-
# Read ilp_game.txt and initialize the matrix with row as number of words in each sentence 
# and column as total number of sentences

import sys
from gurobipy import *

if len(sys.argv) < 1:
    quit()

f = open(sys.argv[1])
lines = f.readlines()
tokens = lines[0].replace(';', '').replace(' ','').split(',')
if(len(tokens) != 2):
    print('Invalid input format')
    quit()
    
noOfWords = int(tokens[1])
noOfSentences = int(tokens[0])

role_score_vars = {}
label_assigned = {}
model = Model('ilp1')

# Role Classifier scorer:-
# Calculate role score for each word and store in the matrix. These values are fixed
# Add these values as the decision variables in your ilp formulation model
matrix = [[[0 for x in range(0,4)]for y in range(0,noOfSentences)] for z in range(0,noOfWords)]
for i in range(0, noOfWords):
    line = lines[i+1]
    tokens = line.replace('\n','').split(';')
    for j in range(0, noOfSentences):
        list_numbers = tokens[j].split(',')
        lists = [0 for l in range(len(list_numbers))]
        for k in range(0, len(list_numbers)):
            role_val = int(list_numbers[k])
            lists[k] = role_val
            role_score_vars[i,j,k+1] = role_val
            label_assigned[i,j,k+1] = model.addVar(vtype=GRB.BINARY, name='Z_'+str(i)+str(j)+'_'+str(k+1))

        matrix[i][j] = lists

print matrix
model.update()



# Similarity scorer:-
# Calculate the similarity of each word across sentences using above output matrix
# and store the values in new similarity matrix
# Add these values as the decision variables in your ilp formulation model

similarity_score_vars = {}       
count = 0
for j0 in range(0, noOfSentences):
    for i0 in range(0, noOfWords):
       for m0 in range(j0+1, noOfSentences):
           for l0 in range(0, noOfWords):
               for r0 in range(1,5):
                   similarity_score_val = role_score_vars[i0,j0,r0] + role_score_vars[l0,m0,r0]
                   similarity_score_vars[i0,j0,l0,m0,r0] = similarity_score_val
                    
                
            
model.update()
# To be added later
# Some other decision variables to be added later are weights lambda_1 and lambda_2


#noOfRoles = 4
lambda_1 = 0.5
lambda_2 = 0.5

obj = LinExpr()
for role in range(1,5):
    for ii in range(0, noOfWords):
        for jj in range(0, noOfSentences):
            obj += label_assigned[ii,jj,role] * role_score_vars[ii,jj,role] * lambda_1
            for ll in range(0, noOfWords):
                for mm in range(jj+1, noOfSentences):
                    obj += label_assigned[ll,mm,role] * similarity_score_vars[ii,jj,ll,mm,role] * lambda_2

model.setObjective(obj, GRB.MAXIMIZE)
    
model.update()                  

#Every word must take only one value
#for j in range(0, noOfSentences):
#    for i in range(0, noOfWords):
#        for k in range(0, noOfRoles):
#            model.addConstr(quicksum([vars[i,j,k,v] for v in range(1,5)]) == 1,
#                        'V_' + str(i) + '_' + str(j))

#Every value must occur only once in the sentence
for j1 in range(0, noOfSentences):
    for k1 in range(1,5):
        model.addConstr(quicksum([label_assigned[i1,j1,k1] for i1 in range(0, noOfWords)])==1, 'constraint_'+str(j1)+'_'+str(k1)) 


model.optimize()
model.write('ilp.lp')

for v in model.getVars():
    print v.varName, v.x
