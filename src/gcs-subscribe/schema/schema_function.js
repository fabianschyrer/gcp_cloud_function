var request = require("request");

function initialize(request_path) {
      
    // Setting URL and headers for request
    var options = {
        url: request_path
    };

    // Return new promise 
    return new Promise(function(resolve, reject) {      
      
      // Do async job
        request.get(options, function(err, resp, body) {
            if (err) {
                console.log("Error request get");
                reject(err);
            } else {              
                console.log("Success with no error");
                resolve(body);
            }
        })
    })

}

function callService(request_path) {
    var initializePromise = initialize(request_path);
    initializePromise.then(function(result) {
        console.log('Request to : '+request_path)
        console.log(`Response is : `+result)
    }, function(err) {
        console.log(err);
    })
}


exports.schema_function = function (event, callback) {
 const file= event.data;
 console.log('Processing file:'+ file.name);
  
 if (file.resourceState === 'not_exists') {
     console.log('not exists')
   callback();
   return;
 }

 let folderStr = "/";
 if(file.name.indexOf(folderStr) === -1) {
   console.log('folder')
   callback();
   return;
 }

 if(file.name.indexOf("sha256") !== -1) {
   console.log('sha256 file')
   callback();
   return;
 }

 if(file.name.indexOf("json") !== -1) {
   console.log('json file')
   callback();
   return;
 }

 if(file.name.indexOf("schema") !== -1) {
//   var request_path = `http://x.x.x.x:5000/jenkins_build/prod/18c700fdcf4345e6968717c8f4db4c61?filename=${file.name}&bucket=${file.bucket}` 
  var request_path = `http://${process.env.TARGET_JENKINS}/18c700fdcf4345e6968717c8f4db4c61?filename=${file.name}&bucket=${file.bucket}`

   console.log('Request to : '+request_path)
   callService(request_path);
   callback();
 }
    
  
};
