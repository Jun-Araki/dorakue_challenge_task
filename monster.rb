class Monster < Character
  def appear
    puts "#{@name}があらわれた！"
  end

  def attack(brave)
    damage = @offense - brave.defense
    damage = 0 if damage < 0

    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0

    puts "#{@name}の攻撃！"
    puts "#{brave.name}に#{damage}のダメージを与えた！"
  end
end
