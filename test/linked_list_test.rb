require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
    # @node = Node.new("plop")
  end
  # binding.pry

  def test_existence_of_linked_list
    assert_instance_of LinkedList, @list
  end

  def test_it_head_node_is_nil
    assert_nil  @list.head
  end

  def test_if_list_can_append
    @list.append("plop")

    assert_equal "plop", @list.head.data
  end

  def test_if_list_can_count
    @list.append("plop")

    assert_equal 1, @list.count
  end

  def test_if_list_return_to_string
    @list.append("plop")

    assert_equal "plop", @list.to_string
  end

  def test_if_list_add_node
    @list.append("plop")
    @list.append("deep")

    assert_instance_of Node, @list.head.next_node
  end
end
