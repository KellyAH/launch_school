// promises are special objects used to help with async operations
// avoid callback hell
// write async code in synconized fashion
// refcc using async await

// An async function is a function declared with the async keyword, and the await keyword is permitted within them. The async and await keywords enable asynchronous, promise-based behavior to be written in a cleaner style, avoiding the need to explicitly configure promise chains.

// then, catch, finally

const promise = new Promise(function(resolve,reject){
  resolve('resolved promise');
});

promise.then(result => console.log(result));