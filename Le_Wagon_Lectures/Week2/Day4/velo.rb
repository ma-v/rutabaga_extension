class Velo

  attr_reader :brand, :wheels
  def initialize(brand)
    @brand = brand
    @wheels = 2
    @ready_to_ride = false
  end

  def fix!
    @ready_to_ride = true
  end
end

class Fixie < Velo
  def initialize(brand)
    super(brand)
    @speeds = 0
    @brakes = false
  end

  def fix!
    super
    puts "No speed, no breaks"
  end
end

fixe = Fixie.new('bianchi')
p fixe
fixe.fix!
p fixe
