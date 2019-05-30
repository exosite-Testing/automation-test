--#ENDPOINT GET /basic/{functionName}
functionName = request.parameters.functionName
if functionName == "_G" then
  local data = ""
  _G["test"] = "test"
  for key, value in pairs(_G) do
    data = data .. key .. ": " .. tostring(value) .. "\n"
  end
  return data
elseif functionName == "getfenv" then
  getfenv()
elseif functionName == "getmetatable" then
  local s = "hello world!"
  return tostring(getmetatable (s))
elseif functionName == "ipairs" then
  local data = ""
  local t = {"one", "two", "three"}
  for i, v in ipairs(t) do
    data = data .. i .. " " .. tostring(v) .. " "
  end
  return data
elseif functionName == "next" then
  local data = ""
  local t = {"one", "two", "three"}
  data = tostring(next(t ,i)) .. " "
  for i=1,3 do
    data = data .. tostring(next(t ,i)) .. " "
  end
  return data
elseif functionName == "pairs" then
  local data = ""
  local t = {"one", "two", "three"}
  for k,v in pairs(t) do
    data = data .. k .. " " .. tostring(v) .. " "
  end
  return data
elseif functionName == "rawequal" then
  local data =""
  data = tostring(rawequal (1, 1)) .. " " .. tostring(rawequal (1, 0))
  return data
elseif functionName == "rawget" then
  local data = ""
  local t = {"one", "two", "three"}
  for i=1,3 do
    data = data .. rawget (t, i) .. " "
  end
  return data
elseif functionName == "rawset" then
  local data = ""
  local t = {"one", "two", "three"}
  rawset (t, 1, "I")
  for i=1,3 do
    data = data .. t[i] .. " "
  end
  return data
elseif functionName == "select" then
  return select("#", 1,2,3,4,5,6,7,8)
elseif functionName == "setfenv" then
  setfenv(1, {})
elseif functionName == "setmetatable" then
  a = {1,2}
  b = {3,4}
  c ={}
  c.__add = function(op1, op2)
  for _, item in ipairs(op2) do
    table.insert(op1, item)
  end
  return op1
  end
  setmetatable(a, c)
  t = a+b
  response.message = table.concat(t," ")
elseif functionName == "tonumber" then
  return tonumber("1111",2)
elseif functionName == "tostring" then
  return tostring(1)
elseif functionName == "type" then
  local data = ""
  local t = {nil,123,"123",true,{1,2,3}}
  for i=1,5 do
    data = data .. type(t[i]) .. " "
  end
  return data
elseif functionName == "unpack" then
  local a,b,c = unpack({1,2,3})
  response.message = a .. " " .. b .. " " .. c
elseif functionName == "_VERSION" then
  return _VERSION
elseif functionName == "pcall" then
  local status, err = pcall(function () error({code=121}) end)
  return err.code
elseif functionName == "xpcall" then
  function myfunction ()
     n = n/nil
  end
  function myerrorhandler( err )
     print( "ERROR:", err )
  end
  status = xpcall( myfunction, myerrorhandler )
  return status
elseif functionName == "import" then
--include all invalid lua function which is nil type
    return (type(import) == 'nil')
elseif functionName == "gc" then
--if gc can be used, it will return how many Ram have been used
    response.message = collectgarbage("count")*100
elseif functionName == "dofile" then
--if file is not existing,it will throw error message
    dofile("doesnt_exist.doesnt_exist")
elseif functionName == "load" then
--a should be 100 after excuting load function
    load(function() a=100 end)()
    response.message = a
elseif functionName == "loadfile" then
--if loadfile failed,res will be nil and an error message
    res,err = loadfile("doesnt_exist")
    response.message = err
elseif functionName == "loadstring" then
--a should be 100 after excuting loadstring function
    loadstring("a = 100")()
    response.message = a
elseif functionName == "require" then
    return type(require) == 'nil'
elseif functionName == "error" then
    error ("this is the message" ,1)
elseif functionName == "assert" then
    assert (false ,"this is the message")
end