'use strict'
const express = require('express')
const app = express()
const port = 3000
const message = `<html>
                <body style="background-color: ${process.env.colour};">
                <h1>${process.env.message}</h1>
                </body></html>`
app.get('/', (req, res) => res.send(message))

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))
