require 'spec_helper'
require 'Duel'

describe Arena do
  describe ".duel" do
    it "it should have a dead player" do

      puts "ARENA TEST"

      w = Warrior.new
      m = Mage.new

      if Arena.duel(w,m,DeathMatch)
        if m.hp < w.hp
          expect(m.hp).to eq 0
          expect(w.hp).to_not eq 0
        else
          expect(w.hp).to eq 0
          expect(m.hp).to_not eq 0
        end
      elsif Arena.duel(w,m,TurnBased)
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
end
