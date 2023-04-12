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

  def get_verticals(player_1, player_2)
    a_vertical = ""
    b_vertical = ""
    c_vertical = ""
    d_vertical = ""
    e_vertical = ""
    f_vertical = ""
    g_vertical = ""

    for a in 1..6 
      a_vertical += "#{a_list.get_node_value(a)}"
    end
    for a in 1..6 
      b_vertical += "#{b_list.get_node_value(a)}"
    end
    for a in 1..6 
      c_vertical += "#{c_list.get_node_value(a)}"
    end
    for a in 1..6 
      d_vertical += "#{d_list.get_node_value(a)}"
    end
    for a in 1..6 
      e_vertical += "#{e_list.get_node_value(a)}"
    end
    for a in 1..6 
      f_vertical += "#{f_list.get_node_value(a)}"
    end
    for a in 1..6 
      g_vertical += "#{g_list.get_node_value(a)}"
    end

    winning_string = "#{a_vertical}*#{b_vertical}*#{c_vertical}*#{d_vertical}*#{e_vertical}*#{f_vertical}*#{g_vertical}"

    if winning_string.include?(" X  X  X  X ")
      player_2.has_lost = true
    elsif winning_string.include?(" O  O  O  O ")
      player_1.has_lost = true
    end
  end
end