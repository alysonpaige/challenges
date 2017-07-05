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

// Ref line 17: "/"" marks the beginning and end of the regular expression
// "," matches the comma you're trying to remove
// "\s" means whitespace characters (space, tab, etc)
// "* means 0 or more ^
// "$"" at the end signifies the end of the string