class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail -= 1
      @store[@tail] = element
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @tail == 0
  end

  def full?
    @tail == -(@size - 1)
  end

end
