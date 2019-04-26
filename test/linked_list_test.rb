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

  def test_if_list_update_count
    @list.append("plop")
    @list.append("deep")

    assert_equal 2, @list.count
  end

  def test_if_list_return_to_string_all_data
    @list.append("plop")
    @list.append("deep")
    @list.append("peep")

    assert_equal "plop deep peep", @list.to_string
  end

  def test_it_can_prepend_an_element
    @list.append("plop")
    @list.append("deep")
    @list.prepend("dop")

    assert_equal "dop plop deep", @list.to_string
    assert_equal 3, @list.count
  end

  def test_it_can_insert_an_element
    @list.append("plop")
    @list.append("deep")
    @list.prepend("dop")
    @list.insert(1, "woo")

    assert_instance_of Node, @list.node_location(@list.head, 0)
    assert_equal "dop woo plop deep", @list.to_string
    assert_equal 4, @list.count
  end

  def test_it_can_find_an_element
    @list.append("plop")
    @list.append("deep")
    @list.prepend("dop")
    @list.insert(1, "woo")


    assert_equal "woo", @list.find(1,1)
    assert_equal "woo plop", @list.find(1,2)
    assert_equal "plop deep", @list.find(2,2)
    assert_equal "plop deep", @list.find(2,3)
    assert_equal "woo plop deep", @list.find(1,3)
  end

  def test_includes_returns_true_when_element_is_present
    @list.append("plop")
    @list.append("deep")
    @list.prepend("dop")
    @list.insert(1, "woo")

    assert_equal true, @list.includes?("woo")
    assert_equal false, @list.includes?("poo")
  end
end
