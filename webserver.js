// node.js :

var http = require('http');

function handleRequest(request, response) {
  console.log('une requête a été demandée');
  response.writeHead(200);
  response.write('Hello, World!');
  response.end();
}

var port = 8888;
http.createServer(handleRequest).listen(port, function() {
  console.log(`Serving HTTP on port ${port} ...`);
});

/*
 * Terminal : 
 * démarrer => node webserver.js
 *  arrêter => ctrl+C
 */