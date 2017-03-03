class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# change value of next_node
# as list is traversed
# return value of new head node
# which is previous tail node

def reverse_list(list, previous=nil)
  previous = nil
  while list
    current_node = list
    next_node = current_node.next_node
    current_node.next_node = previous
    list = next_node
    previous = current_node
  end
  current_node
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
  else
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)