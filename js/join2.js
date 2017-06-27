"use strict";

var _ = {
  join: (array) => {
    var result = "";
    var separator = ", ";
    var i;
      for (i=0; i < array.length; i++) {
        result = result + array[i] + separator;
      }
      return result;
    }
};


const joined = _.join(["hello", "goodbye"], ", ")
const output = joined.replace(/,\s*$/, "");

console.log(output);