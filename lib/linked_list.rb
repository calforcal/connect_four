class Linked_List
  attr_reader :head
  def initialize (head = nil)
    @head = head
  end

  def append(piece)
    @head = Node.new(piece) if @head == nil

    last_node = @head
    while last_node.node_below != nil
      last_node = last_node.node_below
    end
    last_node.node_below = Node.new(piece)
  end

  def get_node_value(row_num)
    pos = 0
    last_node = @head
    while row_num > pos
      last_node = last_node.node_below
      pos += 1
    end
    if last_node != nil then last_node.value else return nil end
  end

  def get_last_node
    last_node = @head
    until last_node.node_below == nil || last_node.node_below.value != " . "
      last_node = last_node.node_below
    end
    last_node
  end
  
end