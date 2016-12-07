--#ENDPOINT GET /default
response.message = "I'm default endpoint"
--#ENDPOINT GET /cause/error
local data = {
  ["request_id"] = "wsRid",
  ["server_ip"] = "wsSip",
  message = "wsMsg"
}
return Websocket.send(data)
--#ENDPOINT POST /text/plain text/plain
return request.body
--#ENDPOINT POST /application/xwwwFormUrlencoded application/x-www-form-urlencoded
return request.body
--#ENDPOINT POST /application/octetStream application/octet-stream
return request.body
--#ENDPOINT POST /application/json application/json
return request.body
--#ENDPOINT PUT /text/plain text/plain
return request.body
--#ENDPOINT PUT /application/xwwwFormUrlencoded application/x-www-form-urlencoded
return request.body
--#ENDPOINT PUT /application/octetStream application/octet-stream
return request.body
--#ENDPOINT PUT /application/json application/json
return request.body
--#ENDPOINT PATCh /text/plain text/plain
return request.body
--#ENDPOINT PATCh /application/xwwwFormUrlencoded application/x-www-form-urlencoded
return request.body
--#ENDPOINT PATCh /application/octetStream application/octet-stream
return request.body
--#ENDPOINT PATCh /application/json application/json
return request.body
--#ENDPOINT DELETE /text/plain text/plain
return request.body
--#ENDPOINT DELETE /application/xwwwFormUrlencoded application/x-www-form-urlencoded
return request.body
--#ENDPOINT DELETE /application/octetStream application/octet-stream
return request.body
--#ENDPOINT DELETE /application/json application/json
return request.body
