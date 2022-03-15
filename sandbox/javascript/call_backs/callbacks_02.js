// CALL BACK EXAMPLE
// https://www.learn-js.org/en/Callbacks

// ------- //
// 1. save defined function to a varaible.
// 2. pass variable into setTimeout
// waits 5 seconds and prints out "Done!" when the 5 seconds are up.
let callback = function() {
    console.log("done!");
};
setTimeout(callback, 5000);

// rewritten with the callbacks defined as an anonymous function
setTimeout(function() {
    console.log("Done!");
}, 5000);