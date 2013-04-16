if ("WebSocket" in window) {
  var ws;
  if(!ws) {ws = new WebSocket("ws://localhost:8080/ws");}
  ws.onmessage = function(evt) { };
  ws.onclose = function() { ws = null};
  ws.onopen = function() { };
}
