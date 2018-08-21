/*
Write a function that takes four string arguments. You will be comparing the first string to the three next strings. Verify if the first string starts with the second string, includes the third string, and ends with the fourth string. If the first string passes all checks, return the string "My head, body, and tail.", otherwise, return "Incomplete.".
*/

function verifySubstrs(mainStr, head, body, tail) {
  let str1 = body.split('');
  str1.shift();
  str1 = str1.join('');
  
  let str2 = tail.split('');
  str2.shift();
  str2 = str2.join('');

  if ((mainStr === head + body + tail) || (mainStr === head + str1 + str2)) {
    return 'My head, body, and tail.';
  } else {
    return 'Incomplete.';
  }
};

// alt solution
function verifySubstrs(mainStr, head, body, tail) {
  return mainStr.startsWith(head) && mainStr.includes(body) && mainStr.endsWith(tail) ? "My head, body, and tail." : "Incomplete.";
}