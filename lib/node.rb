class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = next_node
  end

  def clear!
    self.next_node = nil
  end
end
