// https://www.freecodecamp.org/news/what-is-a-callback-function-in-javascript/

// A higher-order function - accepts other functions as arguments.
// Contains the logic for when the callback function gets executed.
function createQuote(quote, callback){
  let myQuote = "I say: " + quote;
  callback(myQuote);
}

// being used to pass in as our callback function.
function logQuote(quote){
  console.log(quote);
}

// being used to pass in as our callback function.
function screamLogQuote(quote){
  console.log(quote.toUpperCase());
}

// invoke higher-order function... passing a callback function
createQuote("Count your blessings", logQuote);
createQuote("Count your Coins", screamLogQuote);