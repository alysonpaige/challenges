/*
Your mission is to discover if Canada day holiday is occurring today or tomorrow.

Provided an array, supposing that all of the elements have contained the keyword ‘today’ or 'tomorrow'. ignoring letter case return the appropriate results.
*/

function celebratingTodayOrTomorrow(arry) {
	return ((arry.indexOf('tomorrow')>-1) ? [] : ['happy Canada day', 'joyeux jour du Canada'])
}