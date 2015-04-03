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

# Creating Trees --------------------------------------
require 'pp'

pp t = make_tree(8, make_tree(3,leaf(1),make_tree(6,empty_tree,leaf(7))),make_tree(11,make_tree(9,empty_tree,leaf(10)),make_tree(14,leaf(12),leaf(15))))
p "-" * 50
pp t.root

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# Calculate size of binary tree

def size(tree)
  if isEmpty?(tree)
    0
  else
    1 + size(tree.left) + size(tree.right)
  end
end

def breadth_first_search(tree)
  nodes = [tree]
  until nodes.empty?
    current_tree = nodes.shift
    nodes << current_tree.left if current_tree.left != nil
    nodes << current_tree.right if current_tree.right != nil
    p current_tree.root.value if current_tree.root != nil
  end
end

p size(t) == 11
breadth_first_search(t)