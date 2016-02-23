require ('minitest/autorun')
require ('minitest/rg')
require_relative('river')
require_relative('bears')
require_relative('fish')

class TestFish < MiniTest::Test
def setup
  @fish1 = Fish.new('Nemo')
  @fish2 = Fish.new('Dory')
  @fish3 = Fish.new('Squishy')

  fishes = [fish1, fish2, fish3] 
  @rhone = River.new(fishes)

end

def test_fish_name
  assert_equal('Nemo', @fish1.fish_name)
end
end