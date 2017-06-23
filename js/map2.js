"use strict";

var _ = {
  map(input) {
    var output;
    var i;
    var result = input.map(function(input) {
      for (i=0; i < input.length; i++) {
        output = output + input[i];
        // return output.multiplyBy10;
      }
       return output;
    });
    return result;
  }
};

// Define a method that multiplies the input by 10
function multiplyBy10(value) {
  return 10 * value;
}

const value = _.map([1, 2, 3], multiplyBy10);

// value => [10, 20, 30]
console.log(value);

// => [ undefined, undefined, undefined ]
