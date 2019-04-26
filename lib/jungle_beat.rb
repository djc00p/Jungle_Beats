require './lib/node'
require './lib/linked_list'
class JungleBeat
  attr_accessor :list

  def initialize
    @list = list
  end

  def append(data)
    @list = LinkedList.new
    list_data = data.split
    list_data.each do |data|
      @list.append(data)
    end
    @list
  end
end
