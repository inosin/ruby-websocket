require 'em-websocket'

EM.run {
  EM.start_server('0.0.0.0', 8080, EM::WebSocket::Connection, :debug => false) do |ws|
    # only em-websocket 0.5.0 support
    # ws.onopen { |handshake|puts "WebSocket opened #{{
    #     :path => handshake.path,
    #     :query => handshake.query,
    #     :origin => handshake.origin,
    #   }}"
    # }
    ws.onopen { puts "WS opening"}
    ws.onmessage { |msg| ws.send "Pong: #{msg}" }
    ws.onclose   { puts "WebSocket closed" }
    ws.onerror { |e| puts "Error: #{e.message}" }
  end
}
