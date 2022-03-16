// https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Promises

// TODO: fix fetch 
// https://www.npmjs.com/package/node-fetch
// import fetch from 'node-fetch';

const fetchPromise = fetch('https://mdn.github.io/learning-area/javascript/apis/fetching-data/can-store/products.json');

fetchPromise.then( response => {
  const jsonPromise = response.json();
  jsonPromise.then( json => {
    console.log(json[0].name);
  });
});
