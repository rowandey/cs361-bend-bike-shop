!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'pannier'

pannier = Pannier.new(10)
# pannier.capacity
bike = Bike.new(1, :pink, 99.99, pannier)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

puts "Space for #{bike.cargo_capacity} items left."

bike.rent!
