import requests

url =  "https://api.github.com/repos/nmagee/ds2002-course/branches"

response = requests.get(url)

for r in response.json():
    print(r['name'])


    