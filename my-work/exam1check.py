import requests

url = "https://gist.githubusercontent.com/nmagee/17dd9a7f6dd1526ebd46326c25f57a97/raw/6184ae7342a24d164cdd4878a5e6567d627fdc67/data.json"

try:
  response = requests.get(url)
  celebs = json.loads(response.text)
  actors = celebs['Actors']
  for a in actors:
    print('name')	

except Exception as e:
  print(e)

