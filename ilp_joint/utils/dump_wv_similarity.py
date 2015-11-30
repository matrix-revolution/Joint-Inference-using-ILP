import pandas as pd
import cPickle as pickle
import numpy as np
import word2vec as wv
import utility as ut
from sklearn.metrics.pairwise import cosine_similarity

inst = wv.Word2VecModel()
df = pd.read_csv("sim_data_rep.tsv", sep="\t")
similarity = {}
for rid, row in df.iterrows():
    t1 = str(row['t1'])
    t2 = str(row['t2'])
    vector_a  = wv.Word2VecModel.get_word_vector(inst, t1)
    vector_b  = wv.Word2VecModel.get_word_vector(inst, t2)

    score = cosine_similarity(vector_a, vector_b)[0][0]
    similarity[t1, t2] = score
    similarity[t2, t1] = score

pickle.dump(similarity, open("similarity_rep_word2vec_dump.p", "wb"))