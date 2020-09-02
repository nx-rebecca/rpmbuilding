#!/usr/bin/python3

import time
import logging
import sys

#create a logger
logger = logging.getLogger('alogger')
#set logging level
logger.setLevel(logging.INFO)


if len(sys.argv) > 1 and sys.argv[1] == 'local':
    handler = logging.FileHandler('log.log')
else:
    handler = logging.FileHandler('/var/log/logservice.log')

# create a logging format
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)

while True:
    time.sleep(2)
    logger.info('LogService Present!')
