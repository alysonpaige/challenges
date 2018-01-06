function calcualteGAA(goalsAgainst, gameLength, minutesPlayed) {
  var goalsAgainstAverage = (goalsAgainst * gameLength) / minutesPlayed;
  return goalsAgainstAverage;
}

var exampleGoalie = calcualteGAA(18, 90, 977);
// GAA = 1.658
var terStegen = calcualteGAA(7, 90, 1530)
//  GAA = 0.411

function calculateSH(goalsScored, shotsOnGoal) {
  var shootingPercentage = Math.round((goalsScored / shotsOnGoal) * 100);
  return (shootingPercentage + '%');
}

var exampleForward = calculateSH(22, 78);
// 0.282 = 28%
var leoMessi = calculateSH(15, 47);
// 32%
