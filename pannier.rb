class Pannier

  attr_accessor :max_cargo_items, :cargo_contents

  def initialize(max_cargo_items = 5)
    @max_cargo_items = max_cargo_items
    @cargo_contents = []
  end

  def add_item(item)
    self.cargo_contents << item
  end

  def remove_item(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    @max_cargo_items
  end

  def capacity
    @max_cargo_items - self.cargo_contents.size
  end
end