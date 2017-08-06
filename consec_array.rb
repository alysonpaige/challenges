# make array consecutive

def makeArrayConsecutive2(statues)
  # statues.sort_by(&:to_i)
  return statues[statues.length-1]-statues[0]-statues.length+1

  # if statues.length == 1
  #   return 0
  # else
  #   return (statues.length-1)
  # end
end

    # if statues.length==1
    #     return 0
    # else
    # return statues[0]==0 ? 0 : (statues[0]>20 || statues[0]<0) ? 0 : (statues[0]-1)
    # end

p makeArrayConsecutive2([6, 2, 3, 8])
# => 3

p makeArrayConsecutive2([0, 3])
# => 2

p makeArrayConsecutive2([5, 4, 6])
# => 0

p makeArrayConsecutive2([6, 3])
# => 2

puts "should be 3, 2, 0, 2"