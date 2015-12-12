from sklearn.metrics import pairwise_distances

__author__ = 'chetannaik'


def get_similarity(vec_a, vec_b, measure='cosine'):
    # 'cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan'
    return pairwise_distances(vec_a, vec_b, metric=measure)[0][0]


def get_cosine_similarity(vec_a, vec_b):
    return get_similarity(vec_a, vec_b, measure='cosine')
