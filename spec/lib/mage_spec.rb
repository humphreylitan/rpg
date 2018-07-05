require 'spec_helper'
require 'Duel'

describe Mage do
  describe "#initialize" do
    it "returns a mage" do
      m = Mage.new
      expect(m.hp).to eq 40
      expect(m.armor).to eq 0
      expect(m.dmg).to eq 100
      expect(m.name).to eq "Mage"
      expect(m.crit).to eq [100,0]
    end
  end
end
