class Luggage
  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  # removed bike from initialization as it is not used anywhere,
  # and luggage does not need to know about bike
  # only bike needs to know about luggage
  def initialize(initial_capacity = DEFAULT_MAX_CAPACITY, items)
    @capacity = initial_capacity
    @items = items
  end

  def add(item)
    self.items << item
  end

  # changed name to specify luggage weight
  def luggage_weight
    self.items.size * 10
  end
end