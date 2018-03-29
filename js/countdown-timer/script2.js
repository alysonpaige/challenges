function getTimeRemaining() {
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
function displayClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');
  // display result
  function updateClock() {
    var time = getTimeRemaining(endtime);
  
    daysSpan.innerHTML = time.days;
    hoursSpan.innerHTML = ('0' + time.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + time.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + time.seconds).slice(-2);
  
    if (time.total <= 0) {
      clearInterval(timeinterval);
    }
  }
  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

var deadline = new Date("June 14, 2018 11:00:00").getTime();
displayClock('clockdiv', deadline);

  // If the count down is finished, write some text 
  // if (distance < 0) {
  //   clearInterval(x);
  //   document.getElementById("demo").innerHTML = "EXPIRED";
  // }
