class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous=nil)
  while list != nil # as long as next node isn't nil
    old_node = list.next_node # store 99 in old_node, move on to next_node in list
    list.next_node = previous # next_node is equal to previous node, previous is nil
    previous = list # modifies list to make 12 -> nil
    list = old_node # 
  end
  previous
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

# current: 12 -> 99 -> 37 -> nil
# old_node: 99 -> 37 -> nil
# list: 12 -> nil
# previous: 12 -> nil
# list: 99 -> 37 -> nil
# old_node: 37 -> nil
# list: 99 -> 12 -> nil
# previous: 99 -> 12 -> nil
# list: 37 -> nil
# old_node: nil
# list: 37 -> 99 -> 12 -> nil
# previous: 37 -> 99 -> 12 -> nil
# list: nil

# end: 37 -> 99 -> 12 -> nil
# list at middle go first