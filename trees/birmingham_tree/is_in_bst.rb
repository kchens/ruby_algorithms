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

bst = insert(3)
bst
isEmpty?(bst)
bst.root.value

bst = insert(5, bst)
bst = insert(1, bst)
bst = insert(2, bst)
bst = insert(4, bst)
pp bst

# Is In a Node --------------------------------------

# recursive
def is_in(target_value, bst = empty_tree)
  if isEmpty?(bst)
    return false
  elsif bst.root.value == target_value
    return true
  elsif target_value < bst.root.value
    is_in(target_value, bst.left)
  else
    is_in(target_value, bst.right)
  end
end

# iterative solution
def is_in(target_value, bst = empty_tree)
  until isEmpty?(bst)
    if bst.root.value == target_value
      return true
    elsif target_value < bst.root.value
      bst = bst.left
    else
      bst = bst.right
    end
  end
  return false
end

p is_in(1, bst)  == true
p is_in(11, bst) == false
