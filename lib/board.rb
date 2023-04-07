class Board
  attr_reader :a_list, :b_list, :c_list, :d_list, :e_list, :f_list, :g_list

  def initialize
    @a_list = LinkedList.new(Node.new("A"))
    @b_list = LinkedList.new(Node.new("B"))
    @c_list = LinkedList.new(Node.new("C"))
    @d_list = LinkedList.new(Node.new("D"))
    @e_list = LinkedList.new(Node.new("E"))
    @f_list = LinkedList.new(Node.new("F"))
    @g_list = LinkedList.new(Node.new("G"))
  end

  def build_list(column)
    6.times { column.append(".") }
  end

  def list_builder
    build_list(@a_list)
    build_list(@b_list)
    build_list(@c_list)
    build_list(@d_list)
    build_list(@e_list)
    build_list(@f_list)
    build_list(@g_list)
  end

  def print_board
    for a in 0..6
      i = a
      puts "#{@a_list.get_node_value(i)}#{@b_list.get_node_value(i)}#{@c_list.get_node_value(i)}#{@d_list.get_node_value(i)}#{@e_list.get_node_value(i)}#{@f_list.get_node_value(i)}#{@g_list.get_node_value(i)}"
    end
  end
end