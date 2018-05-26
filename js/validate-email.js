/*
Create a function that accepts a string, checks if it's a valid email address and returns either true or false, depending on the evaluation
* - The string must contain an @ character.
* - The string must contain a . character.
* - The @ must have at least one character in front of it.
    e.g. "e@edabit.com" is valid while "@edabit.com" is invalid.
* - The . and the @ must be in the appropriate places.
    e.g. "hello.email@com" is invalid while "john.smith@email.com" is valid.
*/

function validateEmail(str) {
  if (str.indexOf('@') < 1 || str.indexOf('.') < 0 || str.indexOf('@') > str.lastIndexOf('.')) {
    return false;
  } 
  return true;
}
