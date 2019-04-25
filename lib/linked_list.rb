require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count = 0
    current_node = @head
    if current_node.next_node != nil
      count += 1
      current_node = current_node.next_node
    end
    count += 1
    return count
  end

  def to_string
    string = ""
    current_node = @head
    if current_node.next_node != nil
      string << current_node.data + " "
      current_node = current_node.next_node
    end
    string << current_node.data + " "
    string.rstrip
  end
end
