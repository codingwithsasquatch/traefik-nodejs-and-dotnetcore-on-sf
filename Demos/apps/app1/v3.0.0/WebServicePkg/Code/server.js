var http = require('http');

const PORT = process.env.NODE_PORT || 3000;
const RESPONSE = process.env.Fabric_NodeName || process.env.RES_STRING;

var server = http.createServer(function (req, res) {
    var body = '<center><h1>Test:</h1><br /><h3 style="color:green;">' + RESPONSE + '</h3></center>';
    var content_length = body.length;
    res.writeHead(200, {
        'Content-Length': content_length,
        'Content-Type': 'text/html'
    });
    res.end(body);
});
server.listen(PORT);
console.log('Server is running on port ' + PORT);
console.log('SF Node Name: ' + process.env.Fabric_NodeName);