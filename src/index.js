const WebSocket = require('ws');
const ngrok = require('ngrok');

const wss = new WebSocket.Server({ port: 27301 });

wss.on('connection', function connection(ws) {
  console.log('Got a connection!');
  ws.on('message', function incoming(message) {
    console.log('Received: %s', message);
  });

  ws.send('Hello Turtle.');
});

(async () => {
  const url = await ngrok.connect(27301);
  console.log("URL: ", url);
})();
