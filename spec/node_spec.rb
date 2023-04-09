require "./lib/node"

RSpec.describe Node do
  before(:each) do
    @node = Node.new("X")
    @node_2 = Node.new("XX")
  end
  describe "initialize" do
    it "initializes" do
      expect(@node).to be_an_instance_of(Node)
    end

    it "initializes with data" do
      expect(@node.value).to eq("X")
      expect(@node.node_below).to eq(nil)
    end

    it "can have a node_below" do
      @node.node_below = @node_2
      expect(@node.node_below).to eq(@node_2)
    end
  end
end