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
    elements = []
    elements << @head
    elements.count
  end

  def to_string
    @head.data
  end
end
