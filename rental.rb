class Rental
  attr_reader :bike

  def initialize(bike = nil)
    @bike = bike
  end

  # the price function in the canvas spec doesn't make sense to me due to differnt weight calculations.
  # I have changed it to just use: total weight * $4
  # I think this achieves the same thing while using the correct calculations
  def price
    @bike&.price + (4 * @bike&.total_weight)
  end

  # weight removed, now in bike.rb as total_weight
  # this cleans up the dependencies as you no longer need to rent a bike to get its total weight
end