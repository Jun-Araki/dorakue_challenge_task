require "./character"
require "./brave"
require "./monster"

def battle(brave, monster)
  loop do
    brave.attack(monster)
    break if monster.hp <= 0

    monster.attack(brave)
    break if brave.hp <= 0

    status(brave, monster)
  end
  status(brave, monster)
end

def status(brave, monster)
  puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
  TEXT
end

def battle_end(brave, monster)
  if brave.hp == 0
    puts "#{brave.name}はしんでしまった！"
  else
    puts "#{monster.name}をやっつけた！"
  end
end

brave = Brave.new(name: "浦島太郎", hp: 10, offense: 6, defense: 2)
monster = Monster.new(name: "鬼", hp: 12, offense: 6, defense: 1)

monster.appear
battle(brave, monster)
battle_end(brave, monster)
