# -*- coding: utf-8 -*-
"""
Created on Sat Nov  7 23:23:12 2015

@author: shalini
"""

def similarity_score_classifier():
    
    no_of_roles = 4
    similarity_score_vars ={}
    
    for r0 in range (0, no_of_roles+1):
        similarity_score_vars[0,0,0,1,r0] = 1.0
        similarity_score_vars[0,0,1,1,r0] = 0.6
        similarity_score_vars[0,0,2,1,r0] = 0.4
        similarity_score_vars[0,0,3,1,r0] = 0.0
        similarity_score_vars[0,0,0,2,r0] = 1.0
        similarity_score_vars[0,0,1,2,r0] = 0.6
        similarity_score_vars[0,0,2,2,r0] = 0.2
        similarity_score_vars[0,0,3,2,r0] = 0.5
        similarity_score_vars[0,0,0,3,r0] = 1.0
        similarity_score_vars[0,0,1,3,r0] = 0.3
        similarity_score_vars[0,0,2,3,r0] = 0.1
        similarity_score_vars[0,0,3,3,r0] = 0.0
        similarity_score_vars[0,0,0,4,r0] = 0.6
        similarity_score_vars[0,0,1,4,r0] = 0.8
        similarity_score_vars[0,0,2,4,r0] = 0.3
        similarity_score_vars[0,0,3,4,r0] = 0.2
    
        similarity_score_vars[0,1,0,2,r0] = 1.0
        similarity_score_vars[0,1,1,2,r0] = 0.3
        similarity_score_vars[0,1,2,2,r0] = 0.1
        similarity_score_vars[0,1,3,2,r0] = 0.5
        similarity_score_vars[0,1,0,3,r0] = 1.0
        similarity_score_vars[0,1,1,3,r0] = 0.2
        similarity_score_vars[0,1,2,3,r0] = 0.1
        similarity_score_vars[0,1,3,3,r0] = 0.0
        similarity_score_vars[0,1,0,4,r0] = 0.8
        similarity_score_vars[0,1,1,4,r0] = 0.5
        similarity_score_vars[0,1,2,4,r0] = 0.4
        similarity_score_vars[0,1,3,4,r0] = 0.1

        similarity_score_vars[0,2,0,3,r0] = 1.0
        similarity_score_vars[0,2,1,3,r0] = 0.2
        similarity_score_vars[0,2,2,3,r0] = 0.1
        similarity_score_vars[0,2,3,3,r0] = 0.0
        similarity_score_vars[0,2,0,4,r0] = 0.8
        similarity_score_vars[0,2,1,4,r0] = 0.5
        similarity_score_vars[0,2,2,4,r0] = 0.6
        similarity_score_vars[0,2,3,4,r0] = 0.1

        similarity_score_vars[0,3,0,4,r0] = 1.0           
        similarity_score_vars[0,3,1,4,r0] = 0.4
        similarity_score_vars[0,3,2,4,r0] = 0.5
        similarity_score_vars[0,3,3,4,r0] = 0.1       


        #----------------------
        similarity_score_vars[1,0,0,1,r0] = 0.4
        similarity_score_vars[1,0,1,1,r0] = 0.3
        similarity_score_vars[1,0,2,1,r0] = 0.2
        similarity_score_vars[1,0,3,1,r0] = 0.0
        similarity_score_vars[1,0,0,2,r0] = 0.3
        similarity_score_vars[1,0,1,2,r0] = 0.2
        similarity_score_vars[1,0,2,2,r0] = 0.1
        similarity_score_vars[1,0,3,2,r0] = 0.1
        similarity_score_vars[1,0,0,3,r0] = 0.2
        similarity_score_vars[1,0,1,3,r0] = 1.0
        similarity_score_vars[1,0,2,3,r0] = 0.1
        similarity_score_vars[1,0,3,3,r0] = 0.0
        similarity_score_vars[1,0,0,4,r0] = 0.2
        similarity_score_vars[1,0,1,4,r0] = 0.8
        similarity_score_vars[1,0,2,4,r0] = 0.3
        similarity_score_vars[1,0,3,4,r0] = 0.1
    
        similarity_score_vars[1,1,0,2,r0] = 0.2
        similarity_score_vars[1,1,1,2,r0] = 1.0
        similarity_score_vars[1,1,2,2,r0] = 0.1
        similarity_score_vars[1,1,3,2,r0] = 0.3
        similarity_score_vars[1,1,0,3,r0] = 0.2
        similarity_score_vars[1,1,1,3,r0] = 0.2
        similarity_score_vars[1,1,2,3,r0] = 0.1
        similarity_score_vars[1,1,3,3,r0] = 0.0
        similarity_score_vars[1,1,0,4,r0] = 0.2
        similarity_score_vars[1,1,1,4,r0] = 0.2
        similarity_score_vars[1,1,2,4,r0] = 0.3
        similarity_score_vars[1,1,3,4,r0] = 0.1

        similarity_score_vars[1,2,0,3,r0] = 0.2
        similarity_score_vars[1,2,1,3,r0] = 0.2
        similarity_score_vars[1,2,2,3,r0] = 0.1
        similarity_score_vars[1,2,3,3,r0] = 0.0
        similarity_score_vars[1,2,0,4,r0] = 0.2
        similarity_score_vars[1,2,1,4,r0] = 0.3
        similarity_score_vars[1,2,2,4,r0] = 0.6
        similarity_score_vars[1,2,3,4,r0] = 0.1

        similarity_score_vars[1,3,0,4,r0] = 0.2           
        similarity_score_vars[1,3,1,4,r0] = 1.0
        similarity_score_vars[1,3,2,4,r0] = 0.5
        similarity_score_vars[1,3,3,4,r0] = 0.0         
     
        #------------------------------
        similarity_score_vars[2,0,0,1,r0] = 0.0
        similarity_score_vars[2,0,1,1,r0] = 0.0
        similarity_score_vars[2,0,2,1,r0] = 0.0
        similarity_score_vars[2,0,3,1,r0] = 0.0
        similarity_score_vars[2,0,0,2,r0] = 0.0
        similarity_score_vars[2,0,1,2,r0] = 0.0
        similarity_score_vars[2,0,2,2,r0] = 0.0
        similarity_score_vars[2,0,3,2,r0] = 0.0
        similarity_score_vars[2,0,0,3,r0] = 0.0
        similarity_score_vars[2,0,1,3,r0] = 0.0
        similarity_score_vars[2,0,2,3,r0] = 0.0
        similarity_score_vars[2,0,3,3,r0] = 0.0
        similarity_score_vars[2,0,0,4,r0] = 0.0
        similarity_score_vars[2,0,1,4,r0] = 0.0
        similarity_score_vars[2,0,2,4,r0] = 0.0
        similarity_score_vars[2,0,3,4,r0] = 0.0
    
        similarity_score_vars[2,1,0,2,r0] = 0.2
        similarity_score_vars[2,1,1,2,r0] = 0.6
        similarity_score_vars[2,1,2,2,r0] = 1.0
        similarity_score_vars[2,1,3,2,r0] = 0.7
        similarity_score_vars[2,1,0,3,r0] = 0.2
        similarity_score_vars[2,1,1,3,r0] = 0.2
        similarity_score_vars[2,1,2,3,r0] = 0.1
        similarity_score_vars[2,1,3,3,r0] = 0.0
        similarity_score_vars[2,1,0,4,r0] = 0.1
        similarity_score_vars[2,1,1,4,r0] = 0.2
        similarity_score_vars[2,1,2,4,r0] = 0.8
        similarity_score_vars[2,1,3,4,r0] = 0.1
    
        similarity_score_vars[2,2,0,3,r0] = 0.2
        similarity_score_vars[2,2,1,3,r0] = 0.2
        similarity_score_vars[2,2,2,3,r0] = 0.1
        similarity_score_vars[2,2,3,3,r0] = 0.0
        similarity_score_vars[2,2,0,4,r0] = 0.2
        similarity_score_vars[2,2,1,4,r0] = 0.3
        similarity_score_vars[2,2,2,4,r0] = 0.8
        similarity_score_vars[2,2,3,4,r0] = 0.1
    
        similarity_score_vars[2,3,0,4,r0] = 0.1           
        similarity_score_vars[2,3,1,4,r0] = 0.1
        similarity_score_vars[2,3,2,4,r0] = 0.1
        similarity_score_vars[2,3,3,4,r0] = 1.0        
    
        #-----------------------------
        similarity_score_vars[3,0,0,1,r0] = 0.0
        similarity_score_vars[3,0,1,1,r0] = 0.0
        similarity_score_vars[3,0,2,1,r0] = 0.0
        similarity_score_vars[3,0,3,1,r0] = 0.0
        similarity_score_vars[3,0,0,2,r0] = 0.0
        similarity_score_vars[3,0,1,2,r0] = 0.0
        similarity_score_vars[3,0,2,2,r0] = 0.0
        similarity_score_vars[3,0,3,2,r0] = 0.0
        similarity_score_vars[3,0,0,3,r0] = 0.0
        similarity_score_vars[3,0,1,3,r0] = 0.0
        similarity_score_vars[3,0,2,3,r0] = 0.0
        similarity_score_vars[3,0,3,3,r0] = 0.0
        similarity_score_vars[3,0,0,4,r0] = 0.0
        similarity_score_vars[3,0,1,4,r0] = 0.0
        similarity_score_vars[3,0,2,4,r0] = 0.0
        similarity_score_vars[3,0,3,4,r0] = 0.0
    
        similarity_score_vars[3,1,0,2,r0] = 0.0
        similarity_score_vars[3,1,1,2,r0] = 0.0
        similarity_score_vars[3,1,2,2,r0] = 0.0
        similarity_score_vars[3,1,3,2,r0] = 0.0
        similarity_score_vars[3,1,0,3,r0] = 0.0
        similarity_score_vars[3,1,1,3,r0] = 0.0
        similarity_score_vars[3,1,2,3,r0] = 0.0
        similarity_score_vars[3,1,3,3,r0] = 0.0
        similarity_score_vars[3,1,0,4,r0] = 0.0
        similarity_score_vars[3,1,1,4,r0] = 0.0
        similarity_score_vars[3,1,2,4,r0] = 0.0
        similarity_score_vars[3,1,3,4,r0] = 0.0

        similarity_score_vars[3,2,0,3,r0] = 0.5
        similarity_score_vars[3,2,1,3,r0] = 0.2
        similarity_score_vars[3,2,2,3,r0] = 0.1
        similarity_score_vars[3,2,3,3,r0] = 0.0
        similarity_score_vars[3,2,0,4,r0] = 0.2
        similarity_score_vars[3,2,1,4,r0] = 0.3
        similarity_score_vars[3,2,2,4,r0] = 1.0
        similarity_score_vars[3,2,3,4,r0] = 0.1

        similarity_score_vars[3,3,0,4,r0] = 0.0           
        similarity_score_vars[3,3,1,4,r0] = 0.0
        similarity_score_vars[3,3,2,4,r0] = 0.0
        similarity_score_vars[3,3,3,4,r0] = 0.0
        
    return similarity_score_vars
    
    
def main():
    similarity_score_classifier()
    
if __name__ == "__main__":
    main()