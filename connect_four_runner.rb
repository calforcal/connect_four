require "./lib/linked_list"
require "./lib/player"
require "./lib/board"
require "./lib/node"
require "./lib/turn"

board = Board.new
puts "What's your name?"
name = gets.chomp
player = Player.new(name)
computer = Player.new("Computer", " O ")
board.list_builder
turn = Turn.new(player, board)
cpu_turn = Turn.new(computer, board)
puts "Welcome #{name}, let's play some Connect Four!"
puts board.print_board
while player.has_lost == false
  turn.get_choice
  turn.set_piece
  cpu_turn.computer_choice
  cpu_turn.set_piece
end