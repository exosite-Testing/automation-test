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
elseif functionName == "clock" then
  return os.clock ()
elseif functionName == "date" then
  return os.date ("%c",os.time{year=1970, month=1, day=1, hour=0, sec=1},os.time{year=1970, month=1, day=1, hour=0})
elseif functionName == "difftime" then
  return os.difftime(os.time{year=1970, month=1, day=1, hour=0, sec=1},os.time{year=1970, month=1, day=1, hour=0})
elseif functionName == "time" then
  return os.time{year=1970, month=1, day=1, hour=0, sec=1}
end