def length_of_collatz_sequence(i, counter = 0)
  counter += 1
  return counter if i == 1
  if i.even?
    length_of_collatz_sequence(i / 2, counter)
  else
    length_of_collatz_sequence(3 * i + 1, counter)
  end
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

puts longest_collatz_seq(1_000_000)
# puts "Input #{n} has a sequence length of #{i}."

# n = 1_000_000
# longest_sequence_length = 525

# require 'benchmark'
# n = 1_000_000
# Benchmark.bm do |x|
#   x.report("longest_collatz_seq")  { longest_collatz_seq(n) }
# end