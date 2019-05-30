--#ENDPOINT DELETE /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) == nil then
  response.message = "key is not existing"
else
  response.message = "key is existing,delete now"
  Keystore.delete({key=request.parameters.key})
end