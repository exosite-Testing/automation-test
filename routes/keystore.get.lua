--#ENDPOINT GET /keystore
obj = Keystore.list()
if (next(obj["keys"])) ~= nil then
  return to_json(obj)
else
  return "no key found"
end