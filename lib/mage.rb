require_relative 'hero'

class Mage < Hero
  def initialize(hp=40,armor=0,dmg=100,name="Mage",crit=[100,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end
