require_relative 'mode'

class DeathMatch < Mode
  def self.run(attacker,defender)
  # Whoever dies first loses

    while (attacker.hp > 0) & (defender.hp > 0)
      shuffle(attacker,defender)
    end

    winner(attacker,defender)
  end
end
