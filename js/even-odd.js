// Create a function that takes a number as an argument and returns "even" for even numbers and "odd" for odd numbers

function isEvenOrOdd(num) {
  var isEven = num % 2; 

  if (isEven === 0) {
    return 'even';
  } else {
    return 'odd';
  }
}