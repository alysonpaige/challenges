# tree traversal, breadth first search

class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end

def bfs(nodes, value)
  search_list = Array(nodes)
  return nil if search_list.empty?
  next_search_list = []

  search_list.each do |node|
    print("#{node.payload} -> ")
    return node if node.payload == value
    next_search_list.push(*node.children)
  end
  
  bfs(next_search_list, value)
end


queue = MyQueue.new

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)
puts queue.dequeue
queue.enqueue(6)
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue

# Outputs: 1, 2, 3, 4, 5, 6