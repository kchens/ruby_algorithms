class Node
  attr_accessor :value, :right, :left

  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

two = Node.new(2)
three = Node.new(3)
four = Node.new(4)
five = Node.new(5)
six = Node.new(6)
seven = Node.new(7)
eight = Node.new(8)

# def find_largest(root, largest = -1.0/0.0)
#   if root.left
#     largest = find_largest(root.left, root.value)
#   end

#   if root.right
#     largest = find_largest(root.right, largest)
#   end

#   if root.value > largest
#     return root.value
#   else
#     return largest
#   end
# end

def find_largest(root, largest = -1.0/0.0)

  largest = find_largest(root.left, root.value) if root.left
  largest = find_largest(root.right, largest)   if root.right

  if root.value > largest
    return root.value
  else
    return largest
  end
end

def find_second_largest(root)
  left_value = find_largest(root.left)
  right_value = find_largest(root.right)

  left_value > right_value ? right_value : left_value
end

# two.left = six
# two.right = four
# three.left = five
# four.right = seven

# p find_largest(two) == 7

def find_second_largest_bst(root, parent = nil)
  if root.right
    find_second_largest_bst(root.right, root)
  else
    if parent.left
      return parent.left.value
    else
      return parent.value
    end
  end
end


five.left = four
five.right = seven

seven.left = six # comment this line to return 7 on line 83
seven.right = eight

four.left = three
three.left = two

p find_second_largest_bst(five)
