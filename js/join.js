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
