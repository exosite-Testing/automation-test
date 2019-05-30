--#ENDPOINT PUT /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) == nil then
  response.message = "add a new one"
else
  response.message = "key existed,update now"
end
ret = Keystore.set({key=request.parameters.key, value=request.body.value})