const express = require('express');
const fileUpload = require('express-fileupload');
const path = require('path');

const app = express();
const port = 3000

// default options
app.use(fileUpload());
app.use(express.static(__dirname))


app.post('/upload', function(req, res) {
  if (!req.files || Object.keys(req.files).length === 0) {
    return res.status(400).send('No files were uploaded.');
  }

  // The name of the input field (i.e. "sampleFile") is used to retrieve the uploaded file
  let sampleFile = req.files.sampleFile;

  // Use the mv() method to place the file somewhere on your server
  sampleFile.mv(path.join('upload/', sampleFile.name), function(err) {
    if (err)
      return res.status(500).send(err);

    res.send('File uploaded!');
  });
});


app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))
