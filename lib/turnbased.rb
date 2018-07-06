require_relative 'mode'

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
