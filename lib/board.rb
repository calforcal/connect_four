class Board
  attr_reader :a_list, :b_list, :c_list, :d_list, :e_list, :f_list, :g_list

  def initialize
    @a_list = Linked_List.new(Node.new(" A "))
    @b_list = Linked_List.new(Node.new(" B "))
    @c_list = Linked_List.new(Node.new(" C "))
    @d_list = Linked_List.new(Node.new(" D "))
    @e_list = Linked_List.new(Node.new(" E "))
    @f_list = Linked_List.new(Node.new(" F "))
    @g_list = Linked_List.new(Node.new(" G "))
  end

  def build_list(column)
    6.times { column.append(" . ") }
  end

  #Potential Refactor
  def list_builder
    build_list(@a_list)
    build_list(@b_list)
    build_list(@c_list)
    build_list(@d_list)
    build_list(@e_list)
    build_list(@f_list)
    build_list(@g_list)
  end

  #Potential Refactor
  def print_board
    game_board = ""

    for a in 0..6 do
      game_board += "#{@a_list.get_node_value(a)}#{@b_list.get_node_value(a)}#{@c_list.get_node_value(a)}#{@d_list.get_node_value(a)}#{@e_list.get_node_value(a)}#{@f_list.get_node_value(a)}#{@g_list.get_node_value(a)}\n"
    end
    game_board
  end

  def update_a_list(player)
    @a_list.get_last_node.value = player.piece
  end

  def update_b_list(player)
    @b_list.get_last_node.value = player.piece
  end

  def update_c_list(player)
    @c_list.get_last_node.value = player.piece
  end

  def update_d_list(player)
    @d_list.get_last_node.value = player.piece
  end

  def update_e_list(player)
    @e_list.get_last_node.value = player.piece
  end

  def update_f_list(player)
    @f_list.get_last_node.value = player.piece
  end

  def update_g_list(player)
    @g_list.get_last_node.value = player.piece
  end

end