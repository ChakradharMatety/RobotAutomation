import requests
resp= requests.get("https://reqres.in/api/users/2")
print(resp)
print(dir(resp))
print(type(resp))
code=resp.status_code
assert code==200,"Code doesnt match"

#print(resp.text)
#print(resp.content)
print(resp.json())
print(resp.headers)

json_response=resp.json()
print(json_response["data"]["first_name"])
assert json_response["data"]["first_name"]=='Janets',"firstname not matching"