class Product
  attr_reader :name, :price, :stock
  def initialize(name, price, stock)
    raise ArgumentError, "name required" if name.nil? || name.empty?
    raise ArgumentError, "price must be positive" if price <= 0
    raise ArgumentError, "stock cannot be negative" if stock < 0
      
    @name = name
    @price = price
    @stock = stock
  end

  def available?
    @stock > 0
  end

  def reduce_stock(quantity)
    raise ArgumentError, "quantity must be positive" if quantity <= 0
    raise StandardError, "not enough stock" if quantity > @stock

    @stock -= quantity
  end
end