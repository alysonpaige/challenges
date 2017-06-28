"use strict";

var _ = {
    join(value) {
      var result = "";
      var sep = ", ";
      var i;
      for (i=0; i < value.length; i++) {
        result = result + value[i] + sep;
      }
      return result;
    }
};

const joined = _.join(["hello", "goodbye"], ", ")
const output = joined.replace(/,\s*$/, "");

console.log(output);

// alt to removing extra comma from output
var _ = {
    join: function(value) {
      var result = "";
      var sep = ", ";
      var i;
      for (i=0; i < value.length-1; i++) {
        result = result + value[i] + sep;
      }
        result = result + value[value.length-1]
        return result;
    }
};

const joined = _.join(["hello", "goodbye"], ", ")
// const output = joined.replace(/,\s*$/, "");

console.log(joined);
