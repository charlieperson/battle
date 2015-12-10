class Player
  attr_reader :name, :hp
  DEFAULT_DAMAGE = 10
  DEFAULT_HP     = 60

  def initialize(name)
    @name = name
    @hp   = DEFAULT_HP
  end

  def receive_damage
    @hp -= DEFAULT_DAMAGE
  end

end
