def length_of_collatz_sequence(i)
  counter = 1
  while true
    return counter if i == 1
    i = i % 2 == 0 ? i / 2 : 3 * i + 1
    counter += 1
  end
end

# def length_of_collatz_sequence(i, counter = 0)
#   counter += 1
#   return counter if i == 1
#   stack = []
#   if i != 1
#     stack.push(i / 2, counter)
#   else
#     stack.push(3 * i + 1, counter)
#   end
#   stack
# end

puts length_of_collatz_sequence(6)
# => 9