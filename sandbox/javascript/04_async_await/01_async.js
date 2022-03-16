// https://javascript.info/async-await

// “async” before a function means the function will always return a promise.
// async ensures that the function returns a promise, and wraps non-promises in it. 

// regular function
function farewell(){
  return "Bye";
};
// => Bye

// async function
async function farewell_jpn(){
  return "Sayonara";
};
// => Promise { 'Sayonara' }

// explicitly written with a promise
// TODO fix. => Promise { <pending> }
async function farewell_hawaiian(){
  return Promise.resolve("Aloha");
};

console.log(farewell());
console.log(farewell_jpn());
console.log(farewell_hawaiian());
console.log("------");
farewell_jpn().then(console.log);
farewell_hawaiian().then(console.log);