var pi = 3.14;

function calcCircumference(radius) {
  radius = (pi * 2) * radius;
  var msg = "The circumference is " + radius;
  console.log(msg);
}

function calcArea(radius) {
  radius = pi * (Math.sqrt(radius));
  var msg = "The area is " + radius;
  console.log(msg);
}

calcCircumference(5);
calcArea(10);
