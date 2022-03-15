/* CALLBACKS
multi nested callbacks -> callback hell

* async execution call chaining callbacks

* not easily readable
* not easy to debug
*  fix with promises or async await
*/

function asyncTask(callback) {
  console.log('in asyncTask');
  // setTimeout() method executes a function / some code after a number of milliseconds.
  setTimeout(() => {
    console.log('in set timeout call back for asyncTask');
    callback(null, "This is data from server");
  }, 500);
}

function makeApiCall(callback) {
  console.log('in makeApiCall');
  setTimeout(() => {
    console.log("This is async task execution")
    callback();
  }, 500)
}

makeApiCall(() => {
  console.log('4');
  makeApiCall(() => {
    console.log('3');
    asyncTask(() => {
      console.log('2');
      asyncTask( () => {
        console.log('1');
        asyncTask(() => {
          console.log('0');
        })
      })
    })
  })
})
