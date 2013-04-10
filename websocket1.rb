require 'em-websocket'

# Start WebSocket server, including starting eventmachine run loop
EM::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
  ws.onopen { |handshake| puts "WebSocket opened" }
  ws.onmessage { |msg| ws.send "Pong: #{msg}" }
  ws.onclose   { puts "WebSocket closed" }
  ws.onerror { |e| puts "Error: #{e.message}" }
end