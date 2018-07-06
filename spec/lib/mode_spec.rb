require 'spec_helper'
require_relative '../../lib/mode'

describe Mode do
  # Shuffle
  describe ".shuffle" do
    it "should have a loser" do
      w = Warrior.new
      m = Mage.new
      Mode.shuffle(w,m)

      if w.hp == Warrior.new.hp
        expect(m.hp).to be < 40
      elsif m.hp == Mage.new.hp
        expect(w.hp).to be < 100
      end
    end
  end

  # Attack
  describe ".attack" do
    it "should damage the defender" do

      puts "ATTACK TEST"
      w = Warrior.new
      m = Mage.new

      if Mode.attack(m,w)
        expect(w.hp).to be < Warrior.new.hp
        expect(w.hp).to be_between(0,25).inclusive
      elsif Mode.attack(w,m)
        expect(m.hp).to be < Mage.new.hp
        expect(m.hp).to be_between(0,15).inclusive
      end

    end
  end

  # Winner
  describe ".winner" do
    it "should have a winner" do

      puts "WINNER TEST"

      w = Warrior.new
      m = Mage.new


      if Mode.attack(m,w)
        Mode.winner(m,w)
        expect(m.hp).to be > w.hp
      elsif Mode.attack(w,m)
        Mode.winner(m,w)
        expect(w.hp).to be > m.hp
      end

    end
  end
end
