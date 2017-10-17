-- A simple HTTP client
local params = {...}

conn = net.createConnection(net.TCP, 0)
conn:on("receive", function(sck, payload) print(payload) end)
conn:on("connection", function(sck)
  sck:send("GET / HTTP/1.1\r\nHost: "+params[1]+"\r\n"
          .. "Connection: keep-alive\r\nAccept: */*\r\n\r\n")
end)
conn:connect(params[2], params[1])
