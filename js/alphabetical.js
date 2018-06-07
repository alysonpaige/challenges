/*
Create a function that takes a string and returns a string with its letters in alphabetical order.
*/

function AlphabetSoup(str) {
	var alphaStr = str.split('').sort().join('');
	return alphaStr;
}