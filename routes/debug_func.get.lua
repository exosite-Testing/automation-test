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