require 'spec_helper'
require 'Duel'

describe Tank do
  describe "#initialize" do
    it "returns a warrior" do
      t = Tank.new
      expect(t.hp).to eq 100
      expect(t.armor).to eq 100
      expect(t.dmg).to eq 0.5
      expect(t.name).to eq "Tank"
      expect(t.crit).to eq [50,0]
    end
  end
end
