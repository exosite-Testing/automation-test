--#ENDPOINT GET /math/{functionName}
functionName = request.parameters.functionName
if functionName == "abs" then
  response.message = math.abs(-1)
elseif functionName == "acos" then
  response.message = math.acos(1)
elseif functionName == "asin" then
  response.message = math.asin(0)
elseif functionName == "atan" then
  local c, s = math.cos(0.8), math.sin(0.8)
  response.message = math.atan(s/c)
elseif functionName == "atan2" then
  return math.atan2 (1, 1)
elseif functionName == "ceil" then
  response.message = math.ceil(0.378)
elseif functionName == "cos" then
  response.message = math.cos(0)
elseif functionName == ".cosh" then
  return math.cosh (1)
elseif functionName == "deg" then
  response.message = math.deg(0)
elseif functionName == "exp" then
  response.message = math.exp(0)
elseif functionName == "floor" then
  response.message = math.floor(1.378)
elseif functionName == "fmod" then
  response.message = math.fmod(7, 3)
elseif functionName == "frexp" then
  return math.frexp (1)
elseif functionName == "huge" then
  if math.huge > 1000000000000000000000 then
    response.message = "ture"
  else
    response.message = "fales"
  end
elseif functionName == "ldexp" then
  response.message = math.ldexp (1, 1)
elseif functionName == "log" then
  response.message = math.log(math.exp(3))
elseif functionName == "log10" then
  response.message = math.log10 (10)
elseif functionName == "max" then
  response.message = math.max(1,2,3,4,5,6,7,8,9,10)
elseif functionName == "min" then
  response.message = math.min(1,2,3,4,5,6,7,8,9,10)
elseif functionName == "modf" then
  local div, rem = math.modf(5)
  response.message = div .. " " .. rem
elseif functionName == "pi" then
  response.message = math.pi
elseif functionName == "pow" then
  response.message = math.pow (10, 3)
elseif functionName == "rad" then
  response.message = math.rad(180)
elseif functionName == "random" then
  response.message = math.random(1,10)
elseif functionName == "randomseed" then
  math.randomseed (os.time())
  response.message = math.random(1,10)
elseif functionName == "sin" then
  response.message = math.sin(0)
elseif functionName == "sinh" then
  response.message = math.sinh (0)
elseif functionName == "sqrt" then
  response.message = math.sqrt (4)
elseif functionName == "tan" then
  response.message = math.tan (0)
elseif functionName == "tanh" then
  response.message = math.tanh (0)
end