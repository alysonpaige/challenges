"use strict";

var _ = {
  map(input) {
    // iterate over array
    var result = input.map(function(input) {
       return input.multiplyBy10;
    });
    // var iterated = [];
    // var i;
    // for(i=0; i < input.length; i++) {
    //   iterated = iterated + input[i];
    //   return iterated.multiplyBy10;
    // }
    return result;
  }
};

// => [ undefined, undefined, undefined ]

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}
const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);
