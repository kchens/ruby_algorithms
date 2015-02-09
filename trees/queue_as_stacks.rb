class Stack
  def initialize
    @store = []
  end

  def push(element)
    @store << element
  end

  def pop
    @store.pop
  end

  def peek
    @store[-1]
  end

  def empty?
    @store[-1] == nil
  end

end

class Queue

  def initialize
    @first_stack = Stack.new
    @second_stack = Stack.new
  end

  def first
    move_to_stack_2
    @second_stack.peek
  end

  def last
    move_to_stack_1
    @first_stack.peek
  end

  def enqueue(element)
    move_to_stack_1
    @first_stack.push(element)
  end

  def dequeue
    move_to_stack_2
    dequeued = @second_stack.pop
    move_to_stack_1
    dequeued
  end

  def is_empty?
    @first_stack.empty? and @second_stack.empty?
  end

  private

  def move_to_stack_1
    until @second_stack.empty?
      @first_stack.push(@second_stack.pop)
    end
  end

  def move_to_stack_2
    until @first_stack.empty?
      @second_stack.push(@first_stack.pop)
    end
  end

end


q = Queue.new
puts q.is_empty? == true
q.enqueue(1)
q.enqueue(2)
puts q.first == 1
p q.last == 2
puts q.dequeue == 1
q.enqueue(3)
puts q.dequeue == 2
puts q.is_empty? == false
puts q.dequeue == 3
puts q.is_empty? == true
