class Arena
  def self.duel(hero1,hero2,mode)
    puts ""
    puts "**************************"
    puts "  GAME MODE: #{mode}"
    puts "**************************"
    puts ""
    puts "#{hero1.name} (HP: #{hero1.hp}, Armor: #{hero1.armor}, Damage: #{hero1.dmg})"
    puts "vs."
    puts "#{hero2.name} (HP: #{hero2.hp}, Armor: #{hero2.armor}, Damage: #{hero2.dmg})"
    puts ""


    mode.run(hero1,hero2)

    puts ""
  end
end
