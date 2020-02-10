# Bike

class Bike_info

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(bike_id, color, price, weight = STANDARD_WEIGHT, cargo)
    @id = bike_id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new()
  end

end

class cargo
  attr_accessor :contents
  def initialize(id)
    @id = id
    @cargo_contents = []

  end

  def add(item)
    self.contents.add(item)
  end

  def remove(item)
    self.contents.remove(item)
  end
end
def capacity
  MAX_CARGO_ITEMS
end

def remaining_capacity
  MAX_CARGO_ITEMS - self.contents.size
end


class rental
  def initialize(bike)
    @bike = bike
  end
end
