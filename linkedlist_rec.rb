# using recursion

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    node_value = @data.value
    @data = @data.next_node
    return node_value
  end
end

# base case (where the recursion stops)
# recursive step (with computation adavanced to next item)
# def reverse_list(list, stack = Stack.new)
#   return stack.data if list.nil?

#   stack.push(list.value)
#   reverse_list(list.next_node)
# end

def reverse_list(list, stack = Stack.new)
  if list != nil
    stack.push(list.value)
    reverse_list(list.next_node, stack)
  end
    stack.data
end

def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
    end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

# revlist do |node|
#   print_values(node)
# end

# s = Stack.new
# s.push(1)
# s.push(2)
# s.push(3)

# s.pop # => 3
# s.pop # => 2
# s.push(4)
# s.pop # => 4
# s.pop # => 1