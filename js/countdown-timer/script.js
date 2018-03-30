function countdownCalc() {
  // set date to count down to
  var countdownDate = new Date("June 14, 2018 11:00:00").getTime();
  // todays date and time
  var now = new Date().getTime();
  // find distance between now and the coutdown date
  var distance = countdownDate - now;
  // time calculations for days, hours, minutes and seconds
  var seconds = Math.floor((distance / 1000) % 60);
  var minutes = Math.floor((distance / 1000 / 60) % 60);
  var hours = Math.floor((distance / (1000 * 60 * 60)) % 24);
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  return {
    'total': distance,
    'days': days,
    'hours': hours,
    'minutes': minutes,
    'seconds': seconds
  };
}

// initialize clock
function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');
  // display result
  function displayClock() {
    var time = countdownCalc(endtime);
  
    daysSpan.innerHTML = time.days;
    hoursSpan.innerHTML = ('0' + time.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + time.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + time.seconds).slice(-2);
  
    // When countdown is finished
    if (time.total <= 0) {
      clearInterval(timeinterval);
      
      // console.log('Kick off!');
    }
  }
  displayClock();
  var timeinterval = setInterval(displayClock, 1000);
}

var deadline = new Date("June 14, 2018 11:00:00").getTime();
initializeClock('clockdiv', deadline);
