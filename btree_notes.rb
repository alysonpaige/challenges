class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

end

class TreeBuilder

  def initialize(input_array)
    @tree = BinaryTree.new(input_array[0], nil, nil)
    input_array.shift
    @array = input_array
  end

  def build
    array.each do |value|
      insert_to_tree(value, @tree)
    end
  end

  def insert_to_tree(value, curr_node)
    if value < curr_node.payload && curr_node.left == nil
      curr_node.left = BinaryTree.new(value, nil, nil)
    elsif value > curr_node.payload && curr_node.right == nil
      curr_node.right = BinaryTree.new(value, nil, nil)
    elsif value < curr_node.payload
      insert_to_tree(value, curr_node.right)
    end
  end

end

  # def initialize
  #   @treesort = []
  # end

  # def self.sort(array)
  #   tree_representation = build_tree(array)
  #   return flatten_tree(tree_representation)
  # end

  # def flatten_tree(tree)
  #   # build new array, flattening the tree
  # end

  # def build_tree(array)
  #   first = array[0]
  #   tree = BinaryTree.new(first, nil, nil)
  #   rest = array.last(array.length - 1)
  # end