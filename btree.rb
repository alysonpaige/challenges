class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

end

class BTreeSort

  def initialize
    @treesort = []
  end

  def self.sort(array)
    tree_representation = build_tree(array)
    return flatten_tree(tree_representation)
  end

  def flatten_tree(tree)
    # build new array, flattening the tree
  end

  def build_tree(array)
    first = array[0]
    tree = BinaryTree.new(first, nil, nil)
    rest = array.last(array.length - 1)
  end

end

seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

array = [7, 5, 4, 6, 3, 2]