/*
Create a function to multiply all values in an array by the amount of values in that array
* - Example(2, 3, 1, 0 becomes 8,12,4,0)
* - NOTE: All values are numbers.
*/

function MultiplyByLength(arr) {
  const mapArr = arr.map(x => x *= arr.length);
  return mapArr;
}