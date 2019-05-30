--#ENDPOINT GET /string/{functionName}
functionName = request.parameters.functionName
if functionName == "byte" then
  return tostring(string.byte("0",1,1))
elseif functionName == "char" then
  return string.char(49)
elseif functionName == "find" then
  local a,b = string.find("this is a message","is")
  return a .. " " .. b
elseif functionName == "format" then
  PI = "3.1415932545334"
  return string.format("pi=%.2f", PI)
elseif functionName == "gmatch" then
  data = ""
  s = "abcd"
  for w in string.gmatch(s, "%a") do
    data = data .. w .. " "
  end
  return data
elseif functionName == "gsub" then
  print(string.gsub("banana", "a", "A", 4))
elseif functionName == "len" then
  return string.len("123456789")
elseif functionName == "lower" then
  return string.lower("AaBbCc123")
elseif functionName == "match" then
  return string.match("abcdefg", "a")
elseif functionName == "rep" then
  return string.rep("a", 3," " )
elseif functionName == "reverse" then
  response.message = string.reverse("abc")
elseif functionName == "sub" then
  response.message = string.sub("abcdefg", 3 ,6)
elseif functionName == "upper" then
  response.message = string.upper("AaBbCc")
elseif functionName == "dump" then
    return (type(string.dump) == 'nil')
end