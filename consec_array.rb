# make array consecutive

def makeArrayConsecutive2(statues)
  if statues.length == 1
    return 0
  else
    return (statues.length-1)
  end
  # count = 0
  # if statues.length == 1
  #   return 0
  # elsif statues.length-1
  #   return statues
  # else count += 1
  #   return count
  # # statues.sort_by(&:to_i)
  # end
end

p makeArrayConsecutive2([6, 2, 3, 8])
# => 3

p makeArrayConsecutive2([0, 3])
# => 2

p makeArrayConsecutive2([5, 4, 6])
# => 0

p makeArrayConsecutive2([6, 3])
# => 2

puts "should be 3, 2, 0, 2"