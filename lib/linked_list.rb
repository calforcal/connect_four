class Linked_List
  attr_reader :head
  def initialize (head = nil)
    @head = head
  end

  # def count
  #   count = 0
  #   current_node = @head
  #   while current_node.next_node != nil
  #     current_node = current_node.next_node
  #     count += 1
  #   end
  #     count += 1
  # end


  def count
    count = 0
    current_piece = @head
    if current_piece == nil
      @count += 0
    elsif current_piece.node_below == nil
      @count += 1
    elsif
      while current_piece.node_below != nil
        current_piece = current_piece.node_below
        @count += 1
      end
    end
  end

  def make_column
    x = 0
    while x < 6 do
      add_blank
      x += 1
    end
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
end