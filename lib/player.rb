class Player
  attr_reader :name, :has_lost
  def initialize (name)
    @name = name
    @has_lost = false
  end

  def has_lost?
    @has_lost
  end
end