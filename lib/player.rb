class Player
  attr_reader :name, :has_lost, :piece
  def initialize (name, piece = " X ")
    @name = name
    @has_lost = false
    @piece = piece
  end

  def has_lost?
    @has_lost
  end
end