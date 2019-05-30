--#ENDPOINT GET /memory/memory/{times}
--memory usage limits of 1Mb
times = request.parameters.times
str = "abc"
for i=0,times do
  str = str .. str
end