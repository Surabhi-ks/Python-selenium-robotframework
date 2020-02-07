import json
import requests
import jsonpath

api_url= "https://reqres.in/api/users?page=2"

resp= requests.get(api_url)
print(resp.text)
assert resp.status_code==200
json_r= json.loads(resp.text)
print(json_r)
dic1 = '{"name":"sur","Age":28}'
json_res = json.loads(dic1)
print("json data is:\n", json_res)

ab= jsonpath.jsonpath(json_r,'data[0]')
print(ab)

for val in json_r['data']:
    print(val['email'])