class Node
  attr_reader :value, :node_below

  def initialize(value, node_below=nil)
    @value = value
    @node_below = node_below
  end
end