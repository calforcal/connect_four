class Game

  def initialize
    @input = ""
  end

  def menu
    puts "Welcome to CONNECT FOUR"
    until @input.downcase == "p" || @input.downcase == "q"
      puts "Enter p to play. Enter q to quit."
      @input = gets.chomp
    end
    if @input.downcase == "q"
      puts "Goodbye!"
    elsif @input.downcase == "p"
      start
    end
  end

  def start
    puts "What's your name?"
    name = gets.chomp
    player = Player.new(name)
    computer = Player.new("CPU", " O ")
    puts "Welcome #{name}, let's play some Connect Four!"
    game_play(player, computer)
  end

  def game_play(player_1, player_2)
    board = Board.new
    board.list_builder
    turn = Turn.new(player_1, board)
    cpu_turn = Turn.new(player_2, board)

    puts board.print_board

    until player_1.has_lost? || player_2.has_lost?
      turn.get_choice
      turn.set_piece
      cpu_turn.computer_choice
      cpu_turn.set_piece
      winning_combinations(board, player_1, player_2)
    end

    if player_1.has_lost?
      puts "Computer Wins! Better luck next time..."
    elsif player_2.has_lost?
      puts "#{player_1.name} Wins! Way to go!"
    end
  end

  def winning_combinations(board, player_1, player_2)
    verticals(board, player_1, player_2)
  end

  def verticals(board, player_1, player_2)
    board.get_verticals(player_1, player_2)
  end
end