def length_of_collatz_sequence(i)
  counter = 1
  while i != 1
    if i % 2 == 0
      i = i / 2
      counter += 1
    else
      i = i * 3 + 1
      counter += 1
    end
  end
  return counter
end

# def length_of_collatz_sequence(i)
#   counter = 1
#   while true
#     return counter if i == 1
#     i = i % 2 == 0 ? i / 2 : 3 * i + 1
#     counter += 1
#   end
# end

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
# => 9