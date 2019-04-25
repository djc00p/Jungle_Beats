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
end
