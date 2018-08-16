/*
Create a function that takes a string and returns a new string with all vowels removed.
*/

function silenceVowels(str) {
  var regex = /[aeiou]/ig;
  return str.replace(regex, '');
}