--#ENDPOINT PATCH /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) ~= nil then
  response.message = "key is existing,update..."
  Keystore.set({key=request.parameters.key, value=request.body.value})
else
  response.message = "key not found"
  return
end