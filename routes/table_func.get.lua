--#ENDPOINT GET /table/{functionName}
functionName = request.parameters.functionName
if functionName == "concat" then
  local t = {"1","2","3","4","5"}
  response.message = table.concat(t, " ", 2, 4)
elseif functionName == "insert" then
  local t = {"1","2","3"}
  table.insert(t, 2, "two")
  response.message = table.concat(t)
elseif functionName == "maxn" then
  t = {1,2,3,4,5,6,7,9,8}
  response.message = table.maxn (t)
elseif functionName == "remove" then
  local t = {"1","2","3"}
  table.remove(t,2)
  response.message = table.concat(t)
elseif functionName == "sort" then
  t = { 3,2,5,1,4 }
  table.sort(t, function(a,b) return a<b end)
  response.message = table.concat(t)
end