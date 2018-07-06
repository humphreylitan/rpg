require 'spec_helper'
require_relative '../../lib/deathmatch'

describe DeathMatch do
  # Death Match
  describe ".run" do
    it "it should have a dead player" do

      puts "DEATH MATCH TEST"

      w = Warrior.new
      m = Mage.new
      DeathMatch.run(w,m)

      if m.hp < w.hp
        expect(m.hp).to eq 0
        expect(w.hp).to_not eq 0
      else
        expect(w.hp).to eq 0
        expect(m.hp).to_not eq 0
      end

    end
  end
end
