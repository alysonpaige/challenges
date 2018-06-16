/*
Create a function that takes an integer and returns the factorial of that integer. That is, the integer multiplied by all positive lower integers.
*/

function factorial(int) {
	if (int <= 1) {
		return 1;
	} else {
		return int * factorial(int - 1);
	}
}