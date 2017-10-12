function wordBlanks(myNoun, myAdjective, myVerb, myAdverb) {
  var result = "";
  result += "The " + myAdjective + " " + myNoun + " " + myVerb + " by the mailbox " + myAdverb + "!";
  
  return result;
}

// Change the words here to test your function
wordBlanks("dog", "big", "ran", "quickly");
