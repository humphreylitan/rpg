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

class DeathMatch < Mode
  def self.run(attacker,defender)
  # Whoever dies first loses

    while (attacker.hp > 0) & (defender.hp > 0)
      shuffle(attacker,defender)
    end

    winner(attacker,defender)
  end
end

class TurnBased < Mode
  def self.run(attacker, defender)
  # Whoever has the highest HP after x number of turns wins. If someone dies before the final turn, the game shall end with the survivor being the winner.

    index = 1
    no_of_turns = 5
    turns = no_of_turns +1

    puts ""

    while (index < turns) & ((attacker.hp > 0) & (defender.hp > 0))
      puts "== Turn #{index} =="

      shuffle(attacker, defender)

      index = index + 1
    end

    winner(attacker,defender)
  end
end

class Hero
  attr_accessor :hp, :armor
  attr_reader :name, :crit, :dmg
end

class Warrior < Hero
  def initialize(hp=100,armor=25,dmg=25,name="Warrior",crit=[125,0,0,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end

class Healer < Hero
  def initialize(hp=60,armor=0,dmg=5,name="Healer",crit=[20,0,0,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end

class Mage < Hero
  def initialize(hp=40,armor=0,dmg=100,name="Mage",crit=[100,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end

class Tank < Hero
  def initialize(hp=100,armor=100,dmg=0.5,name="Tank",crit=[50,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end
