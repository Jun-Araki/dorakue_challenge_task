class Monster
  attr_accessor :hp
  attr_reader :name, :offense, :defense

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def appear
    puts "#{@name}があらわれた！"
  end
end
