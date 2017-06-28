"use strict";

var _ = {
  map(input) {
    var arr = [1, 2, 3];
    var result = arr.map(multiplyBy10);
      return result
  }
};

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}
const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);


// alt solution:
var object = {
  nap(input, fn) {
    var result = [];
    // loop over all values of input
    for (var i = 0; i < input.length; i++) {
      var x = input[i];
      var xFn = fn(x);
      result.push(xFn);
    }
    return result
  }
};

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}

const value = object.nap([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);