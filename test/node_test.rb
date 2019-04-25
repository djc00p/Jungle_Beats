require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new("plop")
  end

  def test_existence_of_node
    assert_instance_of Node, @node
  end

  def test_it_has_a_data
    assert_equal "plop", @node.data
  end
  
  def test_it_returns_nil_if_no_next_node
    assert_nil @node.next_node
  end
end
