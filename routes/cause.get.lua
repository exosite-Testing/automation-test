--#ENDPOINT GET /cause/error
local data = {
    ["request_id"] = "wsRid",
    ["server_ip"] = "wsSip",
    message = "wsMsg"
  }
  return Websocket.send(data)