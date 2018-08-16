/*
Your task is to drive your car from 1 to 60 Kilometers per hour by printing a pattern.
A hyphen represents the speed of cars.
one hyphen is counted as 1 kph.
*/

function Go(num) {
  var hyphen = '-';
	return hyphen.repeat(num);
}

// for loop
function Go(num) {
  var str = '';
   for(var i = 0; i < num; i++){
   str += '-';
   }
   return str;
 }
 