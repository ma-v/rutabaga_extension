class Bike
  attr_reader :brand, :size, :color

  def initialize(brand, size)
    @brand = brand
    @size = size
  end

  def paint_job(color)
    @color = color
  end
end

mavrick_bike = Bike.new('Bianchi', 56 )
puts mavrick_bike
mavrick_bike.paint_job("Azzuro")
puts mavrick_bike
