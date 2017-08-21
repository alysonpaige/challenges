# Given a sequence of integers as an array,
# determine whether it is possible to obtain a strictly increasing sequence
# by removing no more than one element from the array.

def almostIncreasingSequence(sequence)
  unmatched = 0
  sequence[1..-1].each_with_index do |item, index|
    unmatched += 1 if sequence[index] >= item
    return false if unmatched > 1
  end
  true
end

# function almostIncreasingSequence(seq) {
#   seq=seq.slice()
#   for(var i=0;i<seq.length-1;i++) {
#     if(seq[i]>=seq[i+1]&&i<seq.length-2){
#       seq.splice(i,1)
#       return seq.every((x,j)=>j===seq.length-1||x<seq[j+1])
#     }
#   }
#   return true
# }

# [1, 10, 7, 9, 8] => false
# [1, 10, 7, 9, 10] => true