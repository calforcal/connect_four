require "./lib/linked_list"
require "./lib/node"
require "./lib/board"

RSpec.describe Board do 
  it "Makes a board" do
    board = Board.new
    require 'pry'; binding.pry
    expect(board).to be_an_instance_of(Board)

  end
end
