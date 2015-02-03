class Node

  attr_reader :value
  attr_accessor :left, :right

  def initialize(v)
    @value = v
    @left = nil
    @right = nil
  end

  def push(v)
    case value <=> v
    when -1 then left = Node.new(v)
  end

  def include?(v)

  end

  def inspect
    "#{value}:  Left - #{left.inspect}; Right - #{right.inspect}"
  end


  private

  def push_left(v)

  end

  def push_right(v)

  end
end