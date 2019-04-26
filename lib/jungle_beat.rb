require './lib/node'
require './lib/linked_list'
class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    list_data = data.split
    list_data.each do |data|
      @list.append(data)
    end
    @list
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 200 #{beats}`
  end
end
