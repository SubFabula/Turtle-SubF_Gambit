-- Put this in the Turtle (can be put in a Computer too)

--[[ v First one v
local http = http.websocket("ws://localhost:27301")

if http then
  print("WS Server is online!")
  http.send("Hi from turtle!")
  while true do
    local msg = http.receive()
    if msg then
      print("Received:", msg)
    end
  end
else
  print("Failed to connect.")
endlocal ws, err = http.websocket("wss://[URL]")

if ws then
    print("WS Server is online!")
    ws.send("Hi from turtle!")
    while true do
        local msg = http.receive()
        if msg then
            print("Received: ", msg)
        end
    end
else
    print("Failed to connect.")
end 
^ First one ^ --]]

-- v Second (in use) one v
local ws, err = http.websocket("wss://[URL]")

if ws then
    print("WS Server is online!")
    ws.send("Hi from turtle!")
    while true do
        local msg = http.receive()
        if msg then
            print("Received: ", msg)
        end
    end
else
    print("Failed to connect.")
end
-- ^ Second (in use) one ^
