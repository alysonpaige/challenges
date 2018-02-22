function calculateSupply(age, amountPerDay) {
  var maxAge = 90;
  var total = (amountPerDay * 365) * (maxAge - age);
  var msg = 'You will need ' + total + ' to last you until the ripe of age of ' + maxAge;
  console.log(msg);
}

calculateSupply(26, 1)
calculateSupply(26, 2.5)
calculateSupply(26, 56)
