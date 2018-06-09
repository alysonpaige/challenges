/*
Create a function that takes an array of numbers and returns only the even values.
*/

function noOdds(arr) {
	const evenNums = arr.filter(nums => nums % 2 === 0);
	return evenNums;
}