/*
Create a function that reverses a boolean value and returns the string "boolean expected" if another variable type is given.
*/

// final solution
function reverse(bool) {
	if (typeof bool !== 'boolean') {
    return 'boolean expected';
  } else {
    return !bool;
  }
}

// simplified solutions
function reverse(bool) {
	if (bool === true) {
    return !bool;
  } else if (bool === false) {
    return !bool;
  } else {
    return 'boolean expected';
  }
}

function reverse(bool) {
	if (bool === true) {
    return false;
  } else if (bool === false) {
    return true;
  } else {
    return 'boolean expected';
  }  
}