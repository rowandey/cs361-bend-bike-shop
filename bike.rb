# Bike
require_relative 'luggage'

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, extra_items)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(extra_items)
  end

  # changed to use luggages own weight function
  # previously version seemed to be wrong? 
  # it used item.count whereas luggage uses item.size * 10
  def total_weight
    @weight + @luggage.luggage_weight
  end
end