class Turn
  attr_reader :player, :board, :acceptable_choices
  attr_accessor :choice

  def initialize (player, board)
    @player = player
    @board = board
    @acceptable_choices = ["A", "B", "C", "D", "E", "F", "G"]
    @choice = ""
  end
  
  def get_choice
    puts "Select your column"
    @choice = gets.chomp
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