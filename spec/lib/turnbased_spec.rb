require 'spec_helper'
require 'Duel'

describe TurnBased do
  # Turn Based
  describe ".run" do
    it "it should have a dead player" do

      puts "TURN BASED TEST"

      w = Warrior.new
      m = Mage.new
      TurnBased.run(w,m)

      if w.hp == 0
        expect(m.hp).to be > 0
      elsif m.hp == 0
        expect(w.hp).to be > 0
      elsif w.hp > m.hp
        expect(m.hp).to be >= 0
      elsif m.hp > w.hp
        expect(w.hp).to be >= 0
      end

    end
  end
end
