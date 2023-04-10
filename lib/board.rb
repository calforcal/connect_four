class Board
  attr_reader :row_A, :row_B, :row_C, :r
  def initialize
    @row_A = Linked_List.new(Node.new("A"))
    @row_B = Linked_List.new(Node.new("B"))
    @row_C = Linked_List.new(Node.new("C"))
    @row_D = Linked_List.new(Node.new("D"))
    @row_E = Linked_List.new(Node.new("E"))
    @row_F = Linked_List.new(Node.new("F"))
    @row_G = Linked_List.new(Node.new("G"))
  end
end