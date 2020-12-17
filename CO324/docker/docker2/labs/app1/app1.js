'use strict'

const http = require('http');

const port = 3000;

const server = http.createServer((req, res) => {
  req.on('error', (err) => {
    console.error(err);
    response.statusCode = 400;
    response.end();
  });
  res.on('error', (err) => {
    console.error(err);
  });

  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
