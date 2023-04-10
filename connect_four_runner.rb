require "./lib/linked_list"
require "./lib/player"
require "./lib/board"
require "./lib/node"
require "./lib/turn"

board = Board.new
player = Player.new("Sue")
board.list_builder
board.print_board
