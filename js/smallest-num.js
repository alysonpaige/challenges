/*
Create a function that takes an array of numbers and returns the smallest number in the set.
*/

function findSmallestNum(arr) {
	var sortedArr = Math.min(...arr);
	return sortedArr;
}