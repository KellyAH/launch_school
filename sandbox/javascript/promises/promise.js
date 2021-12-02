// promises are special objects used to help with async operations
// avoid callback hell
// write async code in synconized fashion

// TODO async await - syntactic sugar that uses promises,
// used to write async code that looks syncronous

// An async function is a function declared with the async keyword, and the await keyword is permitted within them. The async and await keywords enable asynchronous, promise-based behavior to be written in a cleaner style, avoiding the need to explicitly configure promise chains.

// then, catch, finally

const promise = new Promise(function(resolve,reject){
  resolve('resolved promise');
// make it randomly resolve or reject after a delay
});

promise
  .then(result => console.log(result))
  .catch(result => console.log(result));

