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
    while current_node.next_node != nil
      count += 1
      current_node = current_node.next_node
    end
    count += 1
    return count
  end

  def to_string
    string = ""
    current_node = @head
    while current_node.next_node != nil
      string << current_node.data + " "
      current_node = current_node.next_node
    end
    string << current_node.data + " "
    string.rstrip
  end

  def prepend(data)
    head_node = Node.new(data)
    head_node.next_node = @head
    @head = head_node
  end

  def insert(position, data)
    node = Node.new(data)
    next_node = node_location(@head, position)
    node_location(@head, position - 1).next_node = node
    node.next_node = next_node
    return node
  end

  def node_location(node, position , count = 0)
    if position == count
      node
    else
      node_location(node.next_node, position, count += 1)
    end
  end

  def find(start_at, num_nodes)
    found_node = node_location(@head, start_at)
    string = ""
    if num_nodes == 1
      string << found_node.data + " "
    else
      until num_nodes == 0 || found_node.nil?
        string << found_node.data + " "
        num_nodes -= 1
        found_node = found_node.next_node if num_nodes > 0
      end
    end
    string.rstrip
  end

  def includes?(data)
    find_by(@head, data)
  end

  def find_by(node, data)
    if node.next_node.nil?
      return false
    elsif node.data == data
      return true
    end
    find_by(node.next_node, data)
  end

  def pop
    new_tail = node_location(head, count - 2)
    old_tail = new_tail.next_node
    new_tail.clear!
    old_tail
  end
end
