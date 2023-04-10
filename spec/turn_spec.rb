require "./lib/linked_list"
require "./lib/player"
require "./lib/board"
require "./lib/node"
require "./lib/turn"

RSpec.describe Turn do
  before(:each) do
    @player = Player.new("Sara")
    @board = Board.new.list_builder
    @turn = Turn.new(@player, @board)
  end

  describe "#initialize" do
    it "initializes" do
      expect(@turn).to be_an_instance_of(Turn)
      expect(@turn.player).to eq(@player)
      expect(@turn.board).to eq(@board)
      expect(@turn.acceptable_choices).to eq(["A", "B", "C", "D", "E", "F", "G"])
    end
  end
end