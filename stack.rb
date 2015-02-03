# 1. LIFO
# 2. You konw only about the top stack -- "peek"
# 3. Push & Pop

class Stack

  attr_reader :holder

  def initialize
    @holder = []
  end

  def push(object)
    @holder << object
  end

  def pop
    @holder.delete_at(-1)
  end

  def peek
    @holder[-1]
  end
end

# [1,2,3] + [4,5] is the same thing as [1,2,3].concat([4,5])

def reverse(string)
  ret = []
  string_arr = string.split("")
  stack = Stack.new

  string_arr.each do |char|
    stack.push(char)
  end
  s_length = stack.holder.length
  s_length.times do
    ret << stack.pop
  end
  ret.join
end

reverse('hello')

# join() does not need parentheses, but split does