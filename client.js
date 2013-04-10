if ("WebSocket" in window) {
  var ws = new WebSocket("ws://localhost:8080/ws");
  ws.onmessage = function(evt) { };
  ws.onclose = function() { };
  ws.onopen = function() { };
}
