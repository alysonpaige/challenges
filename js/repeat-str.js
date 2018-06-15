/*
Create a function that takes a string and returns a string in which each character is repeated once.
*/

function doubleChar(str) {
  const splitStr = str.split('');
  const mapStr = splitStr.map(function (splitStr) {
    return splitStr += splitStr;
  });
  const joinStr = mapStr.join('');
  return joinStr;
}
