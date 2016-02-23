require ('minitest/autorun')
require ('minitest/rg')
require_relative('bears')
require_relative('river')
require_relative('fish')


class TestBears < MiniTest::Test
def setup
  @bear1 = Bears.new('Yogi', 'Grizzly', 'rooaaar', [0])
  @bear2 = Bears.new('Poly-bear','Polar bear', 'grrrr', [0])
  @bear3 = Bears.new('Fuzzy', 'Teddy bear', 'boo?', [0])

  fish1 = Fish.new('Nemo')
  fish2 = Fish.new('Dory')
  fish3 = Fish.new('Squishy')

  fishes = [fish1, fish2, fish3] 
  @rhone = River.new(fishes)

end

#test to find bear name, to check my functions, and tests were linked
def test_find_bear_name
  assert_equal('Poly-bear', @bear2.bear_name)
end

def test_roar
  assert_equal('This is my roar : rooaaar', @bear1.roar)
  assert_equal('This is my roar : grrrr', @bear2.roar)
end

def test_bear_type
  assert_equal('Grizzly', @bear1.bear_type)
end

def test_tummy_fullness
  assert_equal([0], @bear3.food_in_tummy)
end

def test_take_fish
  assert_equal(3, @rhone)
end
end