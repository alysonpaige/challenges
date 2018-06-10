/*
* - Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of the string.
* - In order to work properly, the function should replace all 'a's with 4, 'e's with 3, 'i's with 1, 'o's with 0, and 's's with 5.
*/

function hackerSpeak(str) {
  var chars = {'a':'4','e':'3','i':'1', 'o':'0', 's':'5'};
  str = str.replace(/[aeios]/g, letter => chars[letter]);
  
  return str;
}

// str.replace('a', '4');
// str.replace('e', '3');
// str.replace('i', '1');
// str.replace('o', '0');
// str.replace('s', '5');