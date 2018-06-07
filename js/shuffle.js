/*
Create a function that accepts a string (of a persons first and last name) and returns a string with the first and last name swapped.
* - "Seymour Butts" ➞ "Butts Seymour"
*/

function nameShuffle(str) {
  var swapName = str.split(' ').reverse().join(' ');

  return swapName;
}