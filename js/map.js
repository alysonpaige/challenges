"use strict";

var _ = {
  map(input) {
    var arr = [1, 2, 3]
    var result = arr.map(multiplyBy10);
    //return input.map(function(input) {
      //return input.multiplyBy10;
      return result
    //});
  }
};

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}
const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);
