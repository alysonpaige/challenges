def length_of_collatz_sequence(n, counter = 0)
  counter += 1
  return counter if n == 1
  if n.even?
    length_of_collatz_sequence(n / 2, counter)
  else
    length_of_collatz_sequence(3 * n + 1, counter)
  end
end

def longest_collatz_seq(n)
  longest_sequence = 0
  (1..n).each do |n|
    seq_length = length_of_collatz_sequence(n)
    if seq_length > longest_sequence
      longest_sequence = seq_length
    end
  end
  longest_sequence
end

puts longest_collatz_seq(1_000_000)

require 'benchmark'
n = 1_000_000
Benchmark.bm do |x|
  x.report("longest_collatz_seq")  { longest_collatz_seq(n) }
end