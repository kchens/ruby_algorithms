require 'pp'

class Node
  attr_accessor :value, :pointer

  def initialize(value = nil, pointer = nil)
    @value = value
    @pointer = nil
  end
end


class LinkedList
  attr_accessor :head

  def initialize(head_node = nil)
    @head = head_node
  end

  def add(new_node)
    if @head == nil
      @head = new_node
    else
      current_node = @head
      until current_node.pointer == nil
        current_node = current_node.pointer
      end
      current_node.pointer = new_node
    end
  end

  def remove
    return "Nothing to remove" if @head == nil

    last_node = @head
    until last_node.pointer == nil
      second_to_last_node = last_node
      last_node = last_node.pointer
    end
    second_to_last_node.pointer = nil
    # uncomment to see de-referenced nodes
    # pp second_to_last_node
    # pp last_node
  end

  def print_list
    current_node = @head
    index = 0
    while current_node
      print "Index #{index}, value: #{current_node.value} ==>"
      current_node = current_node.pointer
      index += 1
    end
  end
end