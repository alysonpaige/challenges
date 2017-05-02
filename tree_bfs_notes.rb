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