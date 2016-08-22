--#ENDPOINT GET /_init
local ret1 = User.createRole({role_id = "engineer", parameter = {{name = "sn"}}})
local ret2 = User.createRole({role_id = "normal", parameter = {{name = "sn"}}})
local ret = ret1.status_code ~= nil and ret1 or nil
if ret == nil then
  ret = ret2.status_code ~= nil and ret2 or nil
end
if ret ~= nil then
  response.code = ret.status_code
  response.message = ret.message
else
  response.code = 200
end
--#ENDPOINT GET /keystore
obj = Keystore.list()
if (next(obj["keys"])) ~= nil then
  return to_json(obj)
else
  return "no key found"
end
--#ENDPOINT PUT /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) == nil then
  response.message = "add a new one"
else
  response.message = "key existed,update now"
end
ret = Keystore.set({key=request.parameters.key, value=request.body.value})
--#ENDPOINT PATCH /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) ~= nil then
  response.message = "key is existing,update..."
  Keystore.set({key=request.parameters.key, value=request.body.value})
else
  response.message = "key not found"
  return
end
--#ENDPOINT DELETE /keystore/{key}
obj = Keystore.get({key=request.parameters.key})
if next(obj) == nil then
  response.message = "key is not existing"
else
  response.message = "key is existing,delete now"
  Keystore.delete({key=request.parameters.key})
end
--#ENDPOINT POST /keystore/{key}
Keystore.set({key=request.parameters.key,
              value=request.body.value})
--#ENDPOINT GET /assert
assert (false ,"this is the messege")
--#ENDPOINT GET /error
error ("this is the messege" ,1)
--#ENDPOINT GET /basic
local data = ""
_G["test"] = "test"
for key, value in pairs(_G) do
  data = data .. key .. ": " .. tostring(value) .. "\n"
end
a = data
getfenv()
local s = "hello world!"
a = tostring(getmetatable (s))
local data = ""
local t = {"one", "two", "three"}
for i, v in ipairs(t) do
  data = data .. i .. " " .. tostring(v) .. " "
end
a = data
local data = ""
local t = {"one", "two", "three"}
data = tostring(next(t ,i)) .. " "
for i=1,3 do
  data = data .. tostring(next(t ,i)) .. " "
  print(next(t,i))
end
a = data
local data = ""
local t = {"one", "two", "three"}
for k,v in pairs(t) do
  data = data .. k .. " " .. tostring(v) .. " "
end
a = data
local data =""
data = tostring(rawequal (1, 1)) .. " " .. tostring(rawequal (1, 0))
a = data
local data = ""
local t = {"one", "two", "three"}
for i=1,3 do
  data = data .. rawget (t, i) .. " "
end
a = data
local data = ""
local t = {"one", "two", "three"}
rawset (t, 1, "I")
for i=1,3 do
  data = data .. t[i] .. " "
end
a = data
a = select("#", 1,2,3,4,5,6,7,8)
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
a = table.concat(t," ")
a = tonumber("1111",2)
a = tostring(1)
local data = ""
local t = {nil,123,"123",true,{1,2,3}}
for i=1,5 do
  data = data .. type(t[i]) .. " "
end
a = data
local a,b,c = unpack({1,2,3})
a = a .. " " .. b .. " " .. c
a = _VERSION
setfenv(1, {})
--#ENDPOINT GET /os
a = os.clock ()
a = os.date ("%c",os.time{year=1970, month=1, day=1, hour=0, sec=1},os.time{year=1970, month=1, day=1, hour=0})
a = os.difftime(os.time{year=1970, month=1, day=1, hour=0, sec=1},os.time{year=1970, month=1, day=1, hour=0})
a = os.time{year=1970, month=1, day=1, hour=0, sec=1}
a = tostring(string.byte("0",1,1))
--#ENDPOINT GET /string
s = string.char(49)
local a,b = string.find("this is a message","is")
s = a .. " " .. b
PI = "3.1415932545334"
s = string.format("pi=%.2f", PI)
data = ""
s = "abcd"
for w in string.gmatch(s, "%a") do
  data = data .. w .. " "
end
s = data
s = string.gsub("banana", "a", "A", 4)
s = string.len("123456789")
s = string.lower("AaBbCc123")
s = string.match("abcdefg", "a")
s = string.rep("a", 3," " )
s = string.reverse("abc")
s = string.sub("abcdefg", 3 ,6)
s = string.upper("AaBbCc")
--#ENDPOINT GET /math
a = math.abs(-1)
a = math.acos(1)
a = math.asin(0)
a = math.atan(math.cos(0.8)/math.sin(0.8))
a = math.atan2 (1, 1)
a = math.ceil(0.378)
a = math.cos(0)
a = math.cosh (1)
a = math.deg(0)
a = math.exp(0)
a = math.floor(1.378)
a = math.fmod(7, 3)
a = math.frexp (1)
if math.huge > 1000000000000000000000 then
  a = "ture"
else
  a = "fales"
end
a = math.ldexp (1, 1)
a = math.log(math.exp(3))
a = math.log10 (10)
a = math.max(1,2,3,4,5,6,7,8,9,10)
a = math.min(1,2,3,4,5,6,7,8,9,10)
local div, rem = math.modf(5)
a = div .. " " .. rem
a = math.pi
a = math.pow (10, 3)
a = math.rad(180)
a = math.random(1,10)
math.randomseed (os.time())
a = math.random(1,10)
a = math.sin(0)
a = math.sinh (0)
a = math.sqrt (4)
a = math.tan (0)
a = math.tanh (0)
--#ENDPOINT GET /table
t = {"1","2","3","4","5"}
a = table.concat(t, " ", 2, 4)
t = {"1","2","3"}
table.insert(t, 2, "two")
a = table.concat(t)
t = {1,2,3,4,5,6,7,9,8}
a = table.maxn (t)
t = {"1","2","3"}
table.remove(t,2)
a = table.concat(t)
t = { 3,2,5,1,4 }
table.sort(t, function(a,b) return a<b end)
a = table.concat(t)
--#ENDPOINT GET /cpu/{times}
--limited number of 64000 instructions per execution
times = request.parameters.times
for i=0,times do
end
--#ENDPOINT GET /memory/{times}
--memory usage limits of 1Mb
times = request.parameters.times
str = "abc"
for i=0,times do
  str = str .. str
end
--#ENDPOINT GET /debug
--include all invalid lua function which is nil type
return (type(debug) == 'nil')
--#ENDPOINT GET /debug/{functionName}
functionName = request.parameters.functionName
if functionName == "debug" then
  return (type(debug.debug) == "nil")
elseif functionName == "getfenv" then
  return (type(debug.getfenv) == "nil")
elseif functionName == "gethook" then
  return (type(debug.gethook) == "nil")
elseif functionName == "getinfo" then
  return (type(debug.getinfo) == "nil")
elseif functionName == "getlocal" then
  return (type(debug.getlocal) == "nil")
elseif functionName == "getmetatable" then
  return (type(debug.getmetatable) == "nil")
elseif functionName == "getregistry" then
  return (type(debug.getregistry) == "nil")
elseif functionName == "getupvalue" then
  return (type(debug.getupvalue) == "nil")
elseif functionName == "setfenv" then
  return (type(debug.setfenv) == "nil")
elseif functionName == "sethook" then
  return (type(debug.sethook) == "nil")
elseif functionName == "setlocal" then
  return (type(debug.setlocal) == "nil")
elseif functionName == "setmetatable" then
  return (type(debug.setmetatable) == "nil")
elseif functionName == "setupvalue" then
  return (type(debug.setupvalue) == "nil")
elseif functionName == "traceback" then
  return (type(debug.traceback) == "nil")
end
--#ENDPOINT GET /string/dump
--include all invalid lua function which is nil type
return (type(string.dump) == 'nil')
--#ENDPOINT GET /os/{functionName}
functionName = request.parameters.functionName
if functionName == "execute" then
  return (type(os.execute) == "nil")
elseif functionName == "exit" then
  return (type(os.exit) == "nil")
elseif functionName == "getenv" then
  return (type(os.getenv) == "nil")
elseif functionName == "remove" then
  return (type(os.remove) == "nil")
elseif functionName == "rename" then
  return (type(os.rename) == "nil")
elseif functionName == "setlocale" then
  return (type(os.setlocale) == "nil")
elseif functionName == "tmpname" then
  return (type(os.tmpname) == "nil")
end
--#ENDPOINT GET /basic/import
--include all invalid lua function which is nil type
return (type(import) == 'nil')
--#ENDPOINT GET /basic/gc
--if gc can be used, it will return how many Ram have been used
response.message = collectgarbage("count")*100
--#ENDPOINT GET /basic/dofile
--if file is not existing,it will throw error message
dofile("doesnt_exist.doesnt_exist")
--#ENDPOINT GET /basic/load
--a should be 100 after excuting load function
load(function() a=100 end)()
response.message = a
--#ENDPOINT GET /basic/loadfile
--if loadfile failed,res will be nil and an error message
res,err = loadfile("doesnt_exist")
response.message = err
--#ENDPOINT GET /basic/loadstring
--a should be 100 after excuting loadstring function
loadstring("a = 100")()
response.message = a
--#ENDPOINT GET /basic/require
return type(require) == 'nil'
