import pandas as pd
import cPickle as pickle

df = pd.read_csv("sim_data.tsv", sep="\t")
similarity = {}
for rid, row in df.iterrows():
    t1 = str(row['t1'])
    t2 = str(row['t2'])
    score = float(row['score'])
    similarity[t1, t2] = score
    similarity[t2, t1] = score

pickle.dump(similarity, open("similarity.p", "wb"))