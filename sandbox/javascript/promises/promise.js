// promises are special objects used to help with async operations
// avoid callback hell
// write async code in synconized fashion

//  everyone uses it because it is now the standard way to deal with asynchronous code and avoid callback hell

// An async function is a function declared with the async keyword, and the await keyword is permitted within them. The async and await keywords enable asynchronous, promise-based behavior to be written in a cleaner style, avoiding the need to explicitly configure promise chains.

// then, catch, finally

const promise = new Promise(function(resolve,reject){
  resolve('resolved promise');
// make it randomly resolve or reject after a delay
});

promise
  .then(result => console.log(result))
  .catch(result => console.log(result));

