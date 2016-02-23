class Bears

  attr_accessor :bear_name, :bear_type, :roar, :food_in_tummy

  def initialize(bear_name, bear_type, roar, food_in_tummy)
    @bear_name = bear_name
    @bear_type = bear_type
    @roar = roar
    @food_in_tummy = food_in_tummy
  end

#finds the bears roar
  def roar
    return "This is my roar : #{@roar}"
  end

#finds the bears type
  def bear_type
    return @bear_type
  end

  def tummy_fullnes
    return @food_in_tummy
  end

  def take_fish(remaining_fish)
    remaining_fish = []
    remaining_fish << @rhone.fishes.pop
    return @remaining_fish

  end
end