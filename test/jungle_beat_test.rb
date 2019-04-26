require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

class JungleBeatTest < MiniTest::Test
  def setup
    @jb = JungleBeat.new
    @jb.list = LinkedList.new
  end

  def test_existence_of_jungle_beat
    assert_instance_of JungleBeat, @jb
  end

  def test_jb_has_a_list
    assert_instance_of LinkedList, @jb.list
    assert_nil @jb.list.head
  end

  def test_it_can_append_a_bunch_of_list_data
    @jb.append("deep doo ditt")

    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data
  end
end
