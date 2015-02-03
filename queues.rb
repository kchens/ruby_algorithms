# 1. FIFO
# 2. you know  about - you can access - the last and the first.
# 3. You can get the first and the last
class Queue

  attr_accessor :queue
  def initialize
    @holder = []
  end

  def enqueue(object)
    @holder << object
  end

  def dequeue
    return "empty" if is_empty?
    @holder.shift
  end

  def is_empty?
    @holder.empty?
  end

  def first
    @holder.first
  end

  def last
    @holder.last
  end

end