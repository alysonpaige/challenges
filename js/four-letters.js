/*
Create a function that takes an array of strings. Return all words in the array that are exactly four letters.
*/

function isFourLetters(arr) {
	var filterArr = arr.filter(word => word.length === 4);
	return filterArr;
}