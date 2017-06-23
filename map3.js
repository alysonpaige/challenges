"use strict";

var _ = {
  map: (array, callback) => {
    let new_array = [];
    for (let num in array) {
        new_array.push(callback(array[num]));
    }
    return new_array;
  }
}

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}

const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);
