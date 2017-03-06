# current: 12 -> 99 -> 37 -> nil

def reverse_list(head, previous=nil)
  while head != nil # as long as next node isn't nil
    old_node = head.next_node # store 99 in old_node, move on to next_node in list
    head.next_node = previous # next_node is equal to previous node, previous is nil
    previous = head # modifies list to make 12 -> nil
    head = old_node
  end
  previous
end

while head
head.next, prev, head = prev, head, head.next
end

x = 5
y = 10
x, y = y, x

t = x
x = y
y = t