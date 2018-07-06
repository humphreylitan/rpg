require 'spec_helper'
require_relative '../../lib/warrior'

describe Warrior do
  describe "#initialize" do
    it "returns a warrior" do
      w = Warrior.new
      expect(w.hp).to eq 100
      expect(w.armor).to eq 25
      expect(w.dmg).to eq 25
      expect(w.name).to eq "Warrior"
      expect(w.crit ).to eq [125,0,0,0]
    end
  end
end
