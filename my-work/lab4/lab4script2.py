import boto3
from urllib.request import urlretrieve

bucket_name = "ds2022-qxm6fm"
url = input ("Enter url for an image! :")

userimage = url.split("/")[-1]

urlretrieve(url, userimage)

s3 = boto3.client('s3')

s3.upload_file(userimage, 'ds2022-qxm6fm', userimage)

expires_in = 604800
response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': 'ds2022-qxm6fm', 'Key': userimage,
    'ResponseContentDisposition': 'inline'},

    ExpiresIn=expires_in
)

print(f"Presigned URL: {response}")

#Presigned URL Example: https://ds2022-qxm6fm.s3.amazonaws.com/googlelogo_color_272x92dp.png?response-content-disposition=inline&AWSAccessKeyId=AKIAYEKP5HVVRGIO7UWH&Signature=ThIuXgvpMrdSC7c6j09lIJNBQ9A%3D&Expires=1728698855
