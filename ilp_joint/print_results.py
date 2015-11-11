from collections import defaultdict
import utils.role_scores as rs

sentences = rs.sentence_to_id.keys()
roles = ["UNDERGOER", "ENABLER", "TRIGGER", "RESULT"]

f = open("output/ilp.sol")
lines = f.readlines()
data = filter(lambda x: x.startswith('Z'), lines)
data =  map(lambda x: x[:-1], data)

output_map = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
for d in data:
    var, ind = d.split(" ")
    s = int(var[2])
    a = int(var[3])
    r = int(var[4])
    output_map[s][a][r] = int(ind)


for s, val in output_map.iteritems():
    print "Sentence: ", sentences[s]
    args = rs.sentence_to_args[s]
    for a, aval in val.iteritems():
        arg = args[a]
        for r, i in aval.iteritems():
            if i == 1:
                print "\t", arg, " - ", roles[r]
    print " "
