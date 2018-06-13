/*
Create a function that takes an array of positive numbers and strings and returns a new array without the strings. In other words, remove all strings from an array of elements.
* - Filter out all strings.
* - Return only numbers.
*/

function filterArray(arr) {
  const result = arr.filter(function(num) {
    return typeof num === 'number';
  });
  return result;
}

// Alt solution
function filterArray(arr) {
  return arr.filter(num => typeof num === 'number');
}