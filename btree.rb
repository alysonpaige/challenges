class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def to_a
    return left.to_a + [payload] + right.to_a
  end

  def add_node(value)
    placed = false
    curr_node = self
    until placed
      if value > curr_node.payload
        if curr_node.right.nil?
          curr_node.right = BinaryTree.new(value, nil, nil)
          placed = true
        else
          curr_node = curr_node.right
        end
      else
        if curr_node.left.nil?
          curr_node.left = BinaryTree.new(value, nil, nil)
          placed = true
        else
          curr_node = curr_node.left
        end
      end
    end
  end

  def self.sort(array)
    return nil if array.nil?

    btree = BinaryTree.new(array.shift, nil, nil)
    until array.count == 0
      btree.add_node(array.shift)
    end

    return btree.to_a
  end

end


seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

puts trunk

# array = [7, 4, 9, 1, 6, 14, 10]
# expected sort = [1, 4, 6, 7, 9, 10, 14]