class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage

  end

  def price
  #  self.bike.price + self.bike.luggage.items.count * 10
    bike_total_price + luggage_price
  end

  def bike_total_price
    self.bike.price + bike_weight
  end

  def luggage_price
    (self.luggage.weight) *2
  end

  def bike_weight
    (self.bike.weight) *2
  end

  def weight
    self.bike.weight + luggage.weight
  end

end
