# 18:15 in video 1 explanation of dfs solution

# 2 -> 7 -> 6 -> 5 ->
# 11 ->
# 5 -> 9 -> 4
# stack
def depth_search(root, target, unvisited = [])
  return node if node.data == target
  return nil if node.children.empty? && unvisited.empty?
  print("#{node.data} -> ")
  # stopping condition
  # return node if node.data == target

  if node.children.count == 0 # if no children, 5, 11, 4
    pus "/n" # new line in output
    child = unvisited.pop # pop the first child
    depth_search(child, target, unvisited)

  elsif node.children.count == 1 # like 9, one child
    child = node.children.first
    depth_search(child, target, unvisited)

  elsif node.children.count > 1 # like 6 has children 5 and 11
    child = node.children.first
    unvisited.push(*node.children[1..-1])
    depth_search(child, target, unvisited)
  end
end

depth_search(trunk, 11)