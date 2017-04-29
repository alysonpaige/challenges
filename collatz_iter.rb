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

puts length_of_collatz_sequence(6)
# => 9