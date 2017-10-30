# tree traversal
# depth first search notes

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def dfs(node, value, unvisited=[])
  return node if node.payload == value
  print("#{node.payload} -> ")
  return nil if node.children.empty? && unvisited.empty?
  
  if node.children.count == 0 # if no children, 5, 11, 4
    print "/n" # new line in output
    child = unvisited.pop # pop the first child
    dfs(child, value, unvisited)

  elsif node.children.count == 1 # like 9, one child
    child = node.children.first
    dfs(child, value, unvisited)

  elsif node.children.count > 1 # like 6 has children 5 and 11
    child = node.children.first
    unvisited.push(*node.children[1..-1])
    dfs(child, value, unvisited)
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

dfs(trunk, 11)


# breadth first search notes

# 2 -> 7 -> 5
# 6 -> 9
# 5 -> 11 -> 4
# queue
def bfs(node, target, next_level=[])
  return node if node.data == target
  print ("#{node.data} -> ")
  return nil if node.children.empty? && next_level.empty?

  nodes_to_search = if next_level.count > 0
                      next_level
                    else
                      node.children
                    end

  # search children
  nodes_to_search.each do |node|
    if node.children.count > 0
      # if any children have children, enqueue them
      next_level.push(*node.children)
    end 
    print("#{node.data} -> ") 
    return node if node.data == target  
  end

  # once done with children, move on to next_level queue
  bfs(next_level.shift, target, next_level)
end

bfs(trunk, 11)

#   if node.children.count > 1
#     next_level.push(*children[1..-1])
#   else
#     bfs(node.children.first, target, next_level)
#   end
# end