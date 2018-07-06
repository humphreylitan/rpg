require_relative 'hero'

class Healer < Hero
  def initialize(hp=60,armor=0,dmg=5,name="Healer",crit=[20,0,0,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end
