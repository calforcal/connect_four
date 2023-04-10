require "./lib/linked_list"
require "./lib/node"
require "./lib/board"

RSpec.describe Board do 
  before(:each) do
    @board = Board.new
  end
  describe "#initialize" do
    it "Makes a board" do
      expect(@board).to be_an_instance_of(Board)
      expect(@board.a_list).to be_an_instance_of(Linked_List)
      expect(@board.a_list.head).to be_an_instance_of(Node)
    end
  end

  describe "#build list" do
    it "can build out a board column with a Heading label and 6 empty board spaces" do
      @board.build_list(@board.a_list)
      expect(@board.a_list.head.value).to eq(" A ")
      expect(@board.a_list.get_node_value(3)).to eq(" . ")
      expect(@board.a_list.get_node_value(6)).to eq(" . ")
      expect(@board.a_list.get_node_value(7)).to eq(nil)
    end
  end

  describe "#list_builder" do
    it "can build lists for all columns" do
      @board.list_builder
      expect(@board.a_list.head.value).to eq(" A ")
      expect(@board.a_list.get_node_value(3)).to eq(" . ")
      expect(@board.a_list.get_node_value(6)).to eq(" . ")
      expect(@board.a_list.get_node_value(7)).to eq(nil)

      expect(@board.d_list.head.value).to eq(" D ")
      expect(@board.d_list.get_node_value(3)).to eq(" . ")
      expect(@board.d_list.get_node_value(6)).to eq(" . ")
      expect(@board.d_list.get_node_value(7)).to eq(nil)

      expect(@board.g_list.head.value).to eq(" G ")
      expect(@board.g_list.get_node_value(3)).to eq(" . ")
      expect(@board.g_list.get_node_value(6)).to eq(" . ")
      expect(@board.g_list.get_node_value(7)).to eq(nil)
    end
  end

  describe "#print_board" do
    it "can print the game board" do
      @board.list_builder
      expect(@board.print_board).to eq(" A  B  C  D  E  F  G \n .  .  .  .  .  .  . \n .  .  .  .  .  .  . \n .  .  .  .  .  .  . \n .  .  .  .  .  .  . \n .  .  .  .  .  .  . \n .  .  .  .  .  .  . \n")
    end
  end
end
