class River

attr_accessor :fish_name

def initialize(fish_name)
  @fish_name = fish_name
end

def number_of_fish
  return @fish_name.length
end

end