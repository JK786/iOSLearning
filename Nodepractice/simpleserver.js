 var http=require('http');

http.createServer(function(request,response){
 
  //This is a http request so define it 
  response.writeHead(200,{'Content-Type':'text/plain'}); 
 
  //response is what you want to see from the server when it recievesr 
  response.end('hello world');
 
}).listen(8000);

console.log('hello owrld server running');
