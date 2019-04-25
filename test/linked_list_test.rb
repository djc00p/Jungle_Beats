require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
    @node = Node.new("plop")
  end
  # binding.pry

  def test_existence_of_linked_list
    assert_instance_of LinkedList, @list
  end
end
