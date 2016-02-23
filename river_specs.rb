require ('minitest/autorun')
require ('minitest/rg')
require_relative('river')
require_relative('bears')
require_relative('fish')

class TestRiver < MiniTest::Test
def setup
  fish1 = Fish.new('Nemo')
  fish2 = Fish.new('Dory')
  fish3 = Fish.new('Squishy')

  fishes = [fish1, fish2, fish3] 
  @rhone = River.new(fishes)

end

def test_number_of_fish
  assert_equal(3, @rhone.number_of_fish)
end
end