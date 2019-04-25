require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    elements = []
    elements << @head
    elements.count
  end
end
