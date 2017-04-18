console.log("First customer places request\n");
setTimeout(ServeRequest,10000);
console.log("Second customer places request\n");
setTimeout(ServeRequest,10000);
console.log("Third customer places request\n");
setTimeout(ServeRequest,10000);

function ServeRequest()

{

 console.log("The request is now being served\n");
}
