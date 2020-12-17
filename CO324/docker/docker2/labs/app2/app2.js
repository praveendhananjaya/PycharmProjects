'use strict'

const http = require('http');

const port = 3000;

const message = `<html>
                <body style="background-color: ${process.env.colour};">
                <h1>${process.env.message}</h1>
                </body></html>`

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
  res.setHeader('Content-Type', 'text/html');
  res.end(message);
});

server.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
