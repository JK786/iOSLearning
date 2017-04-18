var fs= require ('fs');

fs.read('input.txt',function(err,data){if(err) console.error(err); console.log(data.toString());});

console.log('\nProgram ended');



























