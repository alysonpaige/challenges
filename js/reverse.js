/*
Create a function that takes a string as its argument and returns the string in reversed order.
*/

function reverse(str) {
  var reverseStr = str.split("").reverse().join("");
  return reverseStr;
}