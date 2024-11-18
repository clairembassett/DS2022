import boto3
import json
from credentials import *

qurl = "https://sqs.us-east-2.amazonaws.com/440848399208/queue_38"

response = sqs.send_message()
QueueUrl = qurl,
MessageBody = "Claire says hello"

print(response)
