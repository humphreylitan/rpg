require_relative 'hero'

class Tank < Hero
  def initialize(hp=100,armor=100,dmg=0.5,name="Tank",crit=[50,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end
