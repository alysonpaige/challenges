def length_of_collatz_sequence(i)
  stack = []
  while i 
end

def longest_collatz_seq(n)
  input_that_produces_the_longest_sequence_length = 0
  longest_sequence_length = 0
  (1..n).each do |i|
    seq_length = length_of_collatz_sequence(i)
    if seq_length > longest_sequence_length
      longest_sequence_length = seq_length
      input_that_produces_the_longest_sequence_length = i
    end
  end
  input_that_produces_the_longest_sequence_length
end

puts longest_collatz_seq(6)