# tree traversal
# depth first search & breadth first search

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  # return nil if 11 isn't in tree
  # if 11 is included, return node containing 11

  def dfs
    puts @payload
    return self if @payload == 11
    @children.each do |child|
      found = child.dfs
      if found == nil
      else
        return found
      end
    end

    return nil
  end

  def bfs
    queue = []
    
    puts @payload
    while @payload != 11
      queue.shift
      @children.each do |child|
        found = child.bfs
        queue.push(found)
        if @payload == 11
        else
          return self
        end
      end

      return nil
    end
  end

end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])
puts "---dfs in Tree---"
puts trunk.dfs
puts "---bfs in Tree---"
puts trunk.bfs

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

  def bfs
    while @queue.empty?
      i = @queue.shift
      puts @payload
      i.children.each do |child|
        @queue.push(child)
      end
    end
  end

  # def bfs(nodes, value)
  #   search_list = Array(nodes)
  #   return nil if search_list.empty?
  #   next_search_list = []

  #   search_list.each do |node|
  #     print("#{node.payload} -> ")
  #     return node if node.payload == value
  #     next_search_list.push(*node.children)
  #   end
    
  #   bfs(next_search_list, value)
  # end

end

queue = MyQueue.new
puts "---bfs in MyQueue---"
puts queue.bfs

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