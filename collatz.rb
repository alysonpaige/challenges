# clarify counter functionality
def collatz(n, counter = 0)
  counter += 1
  return counter if n == 1

  if n.even?
    collatz(n / 2, counter)
  else
    collatz(3 * n + 1, counter)
  end
end

def length
  longest_sequence = 0
  (1..n).each do |n|
    seq_length = collatz(n)
    if seq_length > longest_sequence
      longest_sequence = seq_length
    end
  end
end

puts collatz(7)