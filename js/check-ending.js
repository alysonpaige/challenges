/*
Create a function that takes two strings and returns true if the first argument ends with the second argument; otherewise return false.

RULES:
* - Take two strings as arguments.
* - Determine if second string matches ending of first string.
* - Return boolean value.
*/

// Original solution
function checkEnding(str1, str2) {
	var lastString = str1.substring(str1.length - str2.length);
	
	if (lastString === str2) {
		return true;
	} else {
		return false;
	}
}

// Simplified
function checkEnding(str1, str2) {
	return str1.endsWith(str2);
}
