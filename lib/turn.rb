class Turn
  attr_reader :player, :board, :acceptable_choices
  attr_accessor :choice

  def initialize (player, board)
    @player = player
    @board = board
    @acceptable_choices = ["A", "B", "C", "D", "E", "F", "G"]
    @choice = ""
  end

  #Possible refactor: tell user column letter is full
  def get_choice
    puts "Select column A-G"
    @choice = gets.chomp
    until valid_choice? == true
      puts "Please select a VALID column."
      puts "Select column A-G"
      @choice = gets.chomp
    end
  end

  def valid_choice?
    false unless @acceptable_choices.include?(@choice.upcase)
    if @choice.upcase == "A"
      true if @board.a_list.get_node_value(1) == " . "
    elsif @choice.upcase == "B"
      true if @board.b_list.get_node_value(1) == " . "
    elsif @choice.upcase == "C"
      true if @board.c_list.get_node_value(1) == " . "
    elsif @choice.upcase == "D"
      true if @board.d_list.get_node_value(1) == " . "
    elsif @choice.upcase == "E"
      true if @board.e_list.get_node_value(1) == " . "
    elsif @choice.upcase == "F"
      true if @board.f_list.get_node_value(1) == " . "
    elsif @choice.upcase == "G"
      true if @board.g_list.get_node_value(1) == " . "
    else 
      false
    end
  end

  def set_piece
    if @choice.upcase == "A"
      @board.update_a_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "B"
      @board.update_b_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "C"
      @board.update_c_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "D"
      @board.update_d_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "E"
      @board.update_e_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "F"
      @board.update_f_list(@player)
      puts @board.print_board
    elsif @choice.upcase == "G"
      @board.update_g_list(@player)
      puts @board.print_board
    end
  end
  
end