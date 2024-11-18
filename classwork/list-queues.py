import boto3
import json
from credentials import *

response = sqs.list_queues()

print(response)
