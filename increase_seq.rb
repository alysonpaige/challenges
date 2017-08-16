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

# [1, 10, 7, 9, 8] => false
# [1, 10, 7, 9, 10] => true