# make array consecutive

def makeArrayConsecutive2(statues)
    statues.max - statues.min - statues.length + 1
end

p makeArrayConsecutive2([6, 2, 3, 8])
# => 3

p makeArrayConsecutive2([0, 3])
# => 2

p makeArrayConsecutive2([5, 4, 6])
# => 0

p makeArrayConsecutive2([6, 3])
# => 2
