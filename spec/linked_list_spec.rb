require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  before(:each) do
    @node = Node.new("X")
    @node_2 = Node.new("XX")
    @linked_list = LinkedList.new(@node)
  end

  describe "#initialize" do
    it "initializes" do
      expect(@linked_list).to be_an_instance_of(LinkedList)
    end

    it "initializes with data" do
      expect(@linked_list.head).to eq(@node)
    end
  end

  describe "#append" do
    it "can append values to the list" do
      expect(@linked_list.head.node_below).to eq(nil)
      @linked_list.append("XX")
      expect(@linked_list.head.node_below.value).to eq("XX")
    end
  end
end