read -p "Enter url for an image(jpg): " url

curl $url > user.png

aws s3 cp user.png s3://ds2022-qxm6fm/

userimage=$(aws s3 presign --expires-in 604800 s3://ds2022-qxm6fm/user.png)

echo "This is the presigned URL for your image:  $userimage"

#Example URL
#https://ds2022-qxm6fm.s3.us-east-1.amazonaws.com/user.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAYEKP5HVVRGIO7UWH%2F20241003%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241003T202831Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=6a0cfa8e76ebed30acab65c6acfb9da14c51eb1b5b311811015f771eb3b966ad
