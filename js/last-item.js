/*
Create a function that accepts an array and returns the last item in the array.
*/

function getLastItem(arr) {
	return arr.slice(-1).pop();
}

// alt solution
function getLastItem(arr) {
  return arr[arr.length - 1];
}