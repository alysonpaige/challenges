"use strict";

var _ = {
    function join(value) => {
      var result = "";
      var sep = ", ";
      var i;
      for (i=0; i < value.length; i++) {
        result = result + value[i] + sep;
      }
        return result;
    }
};

const output = _.join(["hello", "goodbye"], ", ")

console.log(output);
