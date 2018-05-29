/*
Create a function that returns true if a number is prime and false if it's not. A prime number is any positive integer that is evenly divisible by only two divisors: 1 and itself. The first ten prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29
* - 1 is not a prime number
* - If a number is odd it is not divisible by an even number
*/

function isPrime(num) {
  for(let i = 2, s = Math.sqrt(num); i <= s; i++)
    if(num % i === 0) return false; 
  return num !== 1;
}

/*
If a number n is not a prime, it can be factored into two factors a and b:

n = a*b

If both a and b were greater than the square root of n, a*b would be greater than n. So at least one of those factors must be less than or equal to the square root of n, and to check if n is prime, we only need to test for factors less than or equal to the square root.
*/