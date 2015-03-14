class Node
  attr_accessor :value, :right, :left

  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

plus = Node.new("+")
multi = Node.new("*")
two = Node.new(2)
three = Node.new(3)
four = Node.new(4)

multi.left = two
multi.right = three
plus.left = multi
plus.right = four

def print(head)
  stack = [head]
  until stack[-1].left.nil?
    curr_node = stack.pop
    stack << curr_node.right.value
    stack << curr_node.value
    stack << curr_node.left
  end
  stack << stack.pop.value

  mult_idx = stack.find_index("*")
  mult_part = (stack[mult_idx - 1 ] * stack[mult_idx + 1])

  sum_idx = stack.find_index("+")
  sum_part = (stack[sum_idx - 1] + mult_part)

  return sum_part

end

p print(plus)
