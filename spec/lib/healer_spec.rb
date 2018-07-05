require 'spec_helper'
require 'Duel'

describe Healer do
  describe "#initialize" do
    it "returns a healer" do
      h = Healer.new
      expect(h.hp).to eq 60
      expect(h.armor).to eq 0
      expect(h.dmg).to eq 5
      expect(h.name).to eq "Healer"
      expect(h.crit).to eq [20,0,0,0]
    end
  end
end
