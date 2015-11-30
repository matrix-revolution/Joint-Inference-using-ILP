import logging
from nltk.corpus import stopwords

__author__ = 'chetannaik'

log_file = "qa.log"
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

# Log file handler
handler = logging.FileHandler(log_file)
handler.setLevel(logging.INFO)

# Logging format
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)

stop_list = stopwords.words('english')
model_file = 'GoogleNews-vectors-negative300.bin'
vector_distribution = 'uniform'

s_map = {0: 'A', 1: 'B', 2: 'C', 3: 'D'}