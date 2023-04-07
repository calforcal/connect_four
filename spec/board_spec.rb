require "./lib/node"
require "./lib/linked_list"
require "./lib/board"

RSpec.describe Board do
  describe "#initialize" do
    it "initializes" do
      board = Board.new
      expect(board).to be_an_instance_of(Board)
      require 'pry'; binding.pry
    end
  end
end