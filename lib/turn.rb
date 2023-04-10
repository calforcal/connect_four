class Turn
  attr_reader :player, :board, :acceptable_choices
  attr_accessor :choice

  def initialize (player, board)
    @player = player
    @board = board
    @acceptable_choices = ["A", "B", "C", "D", "E", "F", "G"]
    @choice = ""
  end
end