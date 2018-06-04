/*
Create a function that takes an array of numbers. Return the largest number in the array.
*/

function findLargestNum(arr) {
	var sortedArr = Math.max(...arr);
	return sortedArr;
}