require "minitest/autorun"
require_relative "../product.rb"

class ProductTest < Minitest::Test

  def setup
    @product = Product.new("Book",200,10)
  end

  def test_validated_the_product
    assert_instance_of Product, @product
  end

  def test_raise_the_error_empty_name_presents
    assert_raises ArgumentError, "name required" do
      Product.new("",200,10)
    end
  end

  def test_raise_the_error_if_the_name_is_nil
    assert_raises ArgumentError, "name required" do
      Product.new(nil,200,10)
    end
  end

  def test_valid_name
    assert_equal "Book", @product.name
  end

  def test_raise_error_if_zero_price
    assert_raises ArgumentError, "price must be positive" do
      Product.new("Book",0,10)
    end
  end

  def test_raise_error_negative_price
    assert_raises ArgumentError, "price must be positive" do
      Product.new("Book",-20,10)
    end
  end

  def test_valid_price 
    assert_equal 200, @product.price
  end

  def test_raise_error_if_stock_is_negative
    assert_raises ArgumentError, "stock cannot be negative" do
      Product.new("Book",70,-90)
    end
  end

  def test_valid_stock 
    assert_equal 10, @product.stock
  end

  def test_product_available
    assert_equal true, @product.available?
  end

  def test_product_not_available
    @product = Product.new("Book",200,0)
    assert_equal false, @product.available?
  end

  def test_reduce_stock
    @product.reduce_stock(4)
    assert_equal 6, @product.stock
  end

  def test_raise_the_error_if_quantity_is_negative
    assert_raises ArgumentError, "quantity must be positive" do
      @product.reduce_stock(-2)
    end
  end

  def test_raise_teh_error_if_invalid_quantity
    assert_raises ArgumentError, "quantity must be positive" do
      @product.reduce_stock(0)
    end
  end

  def test_raise_the_error_quantity_is_more_than_stock
    assert_raises StandardError, "not enough stock" do
      @product.reduce_stock(70)
    end
  end
end