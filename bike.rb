# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  # MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :storage

  def initialize(id, color, price, storage = nil, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @storage = storage
    # @cargo_contents = []
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @storage&.add_item(item)
  end

  def remove_cargo(item)
    @storage&.remove_item(item)
  end

  def cargo_capacity()
    @storage&.capacity()
  end

  # def pannier_capacity
  #   MAX_CARGO_ITEMS
  # end

  # def pannier_remaining_capacity
  #   MAX_CARGO_ITEMS - self.cargo_contents.size
  # end
end
