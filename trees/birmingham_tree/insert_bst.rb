# Base Classes --------------------------------------

class Node
  attr_accessor :value
  def initialize(value)
    @value = value
  end
end

class Tree
  attr_accessor :root, :left, :right

  def initialize(root=nil, left=nil, right=nil)
    @root = root
    @left = left
    @right = right
  end
end

# Methods --------------------------------------

def empty_tree
  Tree.new
end

def make_tree(value, left, right)
  root = Node.new(value)
  Tree.new(root, left, right)
end

def isEmpty?(tree)
  tree.root ? false : true
end

def left(tree)
  tree.left
end

def right(tree)
  tree.right
end

def leaf(value)
  make_tree(value, empty_tree, empty_tree)
end

# Creating Binary Search Tree --------------------------------------
require 'pp'

def insert(new_value, bst = empty_tree)
  if isEmpty?(bst)
    return leaf(new_value)
  elsif new_value < bst.root.value
    return make_tree( bst.root.value, insert( new_value, bst.left), bst.right )
  elsif new_value > bst.root.value
    return make_tree( bst.root.value, bst.left, insert(new_value, bst.right) )
  else
    puts "Error."
  end
end

bst = insert(5)
pp bst
pp isEmpty?(bst)
p bst.root.value

bst = insert(3, bst)
bst = insert(1, bst)
pp bst

