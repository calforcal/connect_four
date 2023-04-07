require "./lib/node"

RSpec.describe Node do
  before(:each) do
    @node = Node.new("X")
  end
  describe "initialize" do
    it "initializes" do
      expect(@node).to be_an_instance_of(Node)
    end

    it "initializes with data" do
      expect(@node.value).to eq("X")
      expect(@node.node_below).to eq(nil)
    end
  end
end