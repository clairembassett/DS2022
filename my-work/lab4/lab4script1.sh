read -p "Enter url for an image(jpg): " url

curl $url > user.png

aws s3 cp user.png s3://ds2022-qxm6fm/

userimage=$(aws s3 presign --expires-in 604800 s3://ds2022-qxm6fm/user.png)

echo "This is the presigned URL for your image:  $userimage"
