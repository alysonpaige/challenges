/*
Create a function that takes a string and returns the number (count) of vowels contained within it.
*/

function countVowels(str) {
	var regex = /[aeiou]/g;
	var found = str.match(regex);
	return found.length;
}