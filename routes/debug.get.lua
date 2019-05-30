--#ENDPOINT GET /debug
--include all invalid lua function which is nil type
return (type(debug) == 'nil')