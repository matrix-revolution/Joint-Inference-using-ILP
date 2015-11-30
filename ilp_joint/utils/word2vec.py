import numpy as np
from config import stop_list, model_file, vector_distribution, logger
from gensim.models import Word2Vec
from nltk.tokenize import word_tokenize as _tokenize

__author__ = 'chetannaik'

np.random.seed(42)


class Word2VecModel:
    def __init__(self, model=None, tokenizer=_tokenize):
        self.t = tokenizer
        if not model:
            self.m = get_model(model_file)
        else:
            self.m = model

    def get_word_vector(self, word):
        try:
            vector = self.m[word]
            logger.info('Got vector for word: %s', word)
        except KeyError:
            logger.info('No vector for word: %s', word)
            vector = get_random_vector(distribution=vector_distribution)
        return vector

    def get_sent_vector(self, sentence, mode='multiplication'):
        sentence = sentence.decode('utf-8')
        if mode == 'multiplication':
            vector = self.multiplicative_vector(sentence)
        else:
            vector = self.additive_vector(sentence)
        return vector

    def tokenize(self, string):
        return self.t(string)

    def additive_vector(self, sentence):
        vector = np.zeros(300)
        tokens = self.t(sentence)
        tokens = [token for token in tokens if token not in stop_list]
        for token in tokens:
            if token in self.m:
                vector += self.get_word_vector(token)
        return vector

    def multiplicative_vector(self, sentence):
        vector = np.ones(300)
        tokens = self.t(sentence)
        tokens = [token for token in tokens if token not in stop_list]
        for token in tokens:
            if token in self.m:
                vector *= self.get_word_vector(token)
        return vector


def get_model(bin_file):
    model = Word2Vec.load_word2vec_format(bin_file, binary=True)
    return model


def get_random_vector(size=300, distribution='uniform'):
    if distribution == 'uniform':
        # Random vector sampled from Uniform Distribution
        vector = np.random.uniform(-1, 1, size).reshape((1, size))
    elif distribution == 'gaussian':
        # Random vector sampled from Gaussian Distribution
        mu, sigma = 0, 0.1
        vector = np.random.normal(mu, sigma, size).reshape((1, size))
    elif distribution == 'zeros':
        # Vector of zeros
        vector = np.zeros(300).reshape((1, size))
    elif distribution == 'ones':
        # Vector of zeros
        vector = np.ones(300).reshape((1, size))
    else:
        vector = np.random.uniform(-1, 1, size).reshape((1, size))
    return vector
