require "./brave"
require "./monster"

brave = Brave.new(name: "勝見", hp: 10, offense: 4, defense: 2)
monster = Monster.new(name: "高塩", hp: 12, offense: 6, defense: 4)

monster.appear
