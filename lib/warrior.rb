require_relative 'hero'

class Warrior < Hero
  def initialize(hp=100,armor=25,dmg=25,name="Warrior",crit=[125,0,0,0])
    @hp = hp
    @armor = armor
    @dmg = dmg
    @name = name
    @crit = crit
  end
end
