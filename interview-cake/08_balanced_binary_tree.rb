require 'pp'
# input: a root, left_count, right_count
# output:
#     left_count, right_count ||= 0
#     if root has left and right node,
#         left_count += 1
#         right_count += 1
#         call superbalanced?(root.left, left_count, right_count)
#     elsif root has left node,
#         left_count += 1
#         call superbalanced?(root.left, left_count, right_count)
#     elsif root has right node, right_count += 1
#         right_count += 1
#         call superbalanced?(root.left, left_count, right_count)
#     else
#         return 0
#     end
#     return true


def superbalanced?(root, left_count = 0, right_count = 0)
  if root.left.nil? && root.right.nil?
    return 0
  elsif root.left && root.right
    left_count += 1
    right_count += 1
    superbalanced?(root.left, left_count, right_count)
    superbalanced?(root.right, left_count, right_count)
  elsif root.left
    left_count += 1
    one_apart(left_count, right_count)
    superbalanced?(root.left, left_count, right_count)
  elsif root.right
    right_count += 1
    one_apart(left_count, right_count)
    superbalanced?(root.right, left_count, right_count)
  end
  return true
end


def one_apart?(left_count, right_count)
  if (left_count - right_count).abs > 1
    p "----" * 10
    p left_count
    p right_count
    return false
  end
end

# # # # # # # # # # # # # # # # # # # # # # # # # # #

class Node
  attr_accessor :value, :right, :left

  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end
# # # # # # # # # # # # # # # # # # # # # # # # # # #
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
# multi_two.right = seven

pp superbalanced?(plus)
