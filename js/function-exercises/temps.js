function tempConverter(temp) {
  var celsiusToFahrenheit = temp * 1.8 + 32;
  console.log(temp + " degrees Celsius is " + celsiusToFahrenheit + " Fahrenheit.");
  var fahrenheitToCelsius = (temp - 32) / 1.8;
  console.log(temp + " degrees Fahrenheit is " + fahrenheitToCelsius + " Celsius.");
}

tempConverter(10);

// function celsiusToFahrenheit(celsius) {
//   var celsiusInF = (celsius*9)/5 + 32;
//   console.log(celsius + '°C is ' + celsiusInF + '°F');
// }
//
// function fahrenheitToCelsius(fahrenheit) {
//   var fahrenheitInC = ((fahrenheit - 32)*5)/9;
//   console.log(fahrenheit + '°F is ' + fahrenheitInC + '°C');
// }
