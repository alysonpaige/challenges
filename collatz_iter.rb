def length_of_collatz_sequence(i)
  counter = 1
  if i == 1
    return counter
  elsif i % 2 == 0
    counter += 1
    i = i / 2
  else
    i = i * 3 + 1
  end
end

# use case/when statement or array instead?

# def length_of_collatz_sequence(i)
#   counter = 1
#   while true
#     return counter if i == 1
#     i = i % 2 == 0 ? i / 2 : 3 * i + 1
#     counter += 1
#   end
# end

puts length_of_collatz_sequence(6)
# => 9