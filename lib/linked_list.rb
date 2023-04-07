class LinkedList
  attr_reader :head
  attr_accessor :node_below

  def initialize(head=nil)
    @head = head
  end

  def append(node_value)
    @head = node if @head == nil
    current_node = @head
    until current_node.node_below == nil
      current_node = current_node.node_below
    end
    current_node.node_below = Node.new(node_value)
  end

  def get_node_value(num)
    current_node = @head
    counter = 0
    while counter < num
      current_node = current_node.node_below
      counter += 1
    end
    current_node.value
  end
end