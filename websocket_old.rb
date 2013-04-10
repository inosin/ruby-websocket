require 'em-websocket'

# em-websocket 0.3.8 & 0.5.0
EventMachine.run do
  EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
    ws.onopen { |handshake| puts "WebSocket opened" }
    ws.onmessage { |msg| ws.send "Pong: #{msg}" }
    ws.onclose   { puts "WebSocket closed" }
    ws.onerror { |e| puts "Error: #{e.message}" }
  end
end