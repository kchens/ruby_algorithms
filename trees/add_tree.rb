 # I was only given lines 2-8 and asked to build my own class and method
 # Question: Given this tree
 #     +
 #    / \
 #   *   4
 #  / \
 # 2   3
 # Write a class and method to get: ( 2 * 3 ) + 4 = 10

class Node
  attr_accessor :value, :right, :left

  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

# Building the tree above
# plus = Node.new("+")
# multi = Node.new("*")
# two = Node.new(2)
# three = Node.new(3)
# four = Node.new(4)

# multi.left = two
# multi.right = three
# plus.left = multi
# plus.right = four

# this is also assuming the problem will ask to add and multiply
# Andy Chiu's solution below
# def calc(root)
#   return root.value if !root.left && !root.right
#   if root.value == "+"
#     calc(root.left) + calc(root.right)
#   else
#     calc(root.left) * calc(root.right)
#   end
# end

# p calc(plus)



plus = Node.new("+")
multi = Node.new("*")
multi_two = Node.new("*")
subtract = Node.new('-')
two = Node.new(2)
three = Node.new(3)
four = Node.new(4)
five = Node.new(5)
seven = Node.new(7)

plus.left = multi
plus.right = subtract
multi.left = four
multi.right = three
subtract.left = multi_two
subtract.right = five
multi_two.left = two
multi_two.right = seven

def calc(root)
  return root.value if !root.left && !root.right
  if root.value == '+'
    calc(root.left) + calc(root.right)
  elsif root.value == '*'
    calc(root.left) * calc(root.right)
  elsif root.value == "-"
    calc(root.left) - calc(root.right)
  end
end

p calc(plus)
