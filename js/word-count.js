/*
Create a function that takes a string and returns the word count. The string will be a sentence.
*/

function countWords(str) {
  var numOfWords = str.split(' ').length;
  return numOfWords;
}