!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]
#luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY)
luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY,["stuff","stuff2"])
bike = Bike.new(1, :pink, 99.99,125)

rental = Rental.new(bike,luggage)
puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"
