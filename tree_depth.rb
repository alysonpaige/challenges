# tree traversal, depth first search

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
    pus "/n" # new line in output
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