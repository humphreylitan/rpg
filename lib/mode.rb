class Mode

  def self.shuffle(hero1, hero2)
    a = [hero1,hero2].shuffle
    attacker = a[0]
    defender = a[1]
    attack(attacker,defender)
  end

  def self.attack(attacker, defender)
    crit_dmg = attacker.crit.sample
    total_dmg = attacker.dmg + crit_dmg

    if defender.armor > 0
      defender.armor = defender.armor - total_dmg
      if defender.armor <= 0
        defender.hp = defender.hp - defender.armor.abs
        defender.armor = 0
      end
    elsif defender.armor <= 0
      defender.hp = defender.hp - total_dmg
    end

    if defender.hp <= 0
      defender.hp = 0
    end

    if crit_dmg != 0
      crit_msg = "(+#{crit_dmg} critical damage)"
    else
      crit_msg = ""
    end

    puts "#{attacker.name} damaged #{defender.name} by #{attacker.dmg}#{crit_msg}."
    puts "***"
    puts "Status:"
    puts "#{attacker.name} (HP: #{attacker.hp}, Armor: #{attacker.armor})"
    puts "#{defender.name} (HP: #{defender.hp}, Armor: #{defender.armor})"
    puts ""
  end

  def self.winner(x,y)
    if x.hp > y.hp
      winner = x.name
    else
      winner = y.name
    end

    puts "********************"
    puts "#{winner} won!      "
    puts "********************"
  end
end
