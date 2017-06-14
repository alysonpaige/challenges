"use strict";

var _ = {
    join: (array, separator) => {
      var result = "";
      var sep = ", ";
      var i;
      for (i=0; i < x.length; i++) {
        result = result + x[i] + sep;
      }
        return result;
    }
};

// x is not defined, where to put parameter?

const value = _.join(["hello", "goodbye"], ", ")

console.log(value);
