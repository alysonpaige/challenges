var readlineSync = require('readline-sync');

var degrees = readlineSync.question('Enter degrees in Celsius: ');
console.log('It is ' + degrees + '!');