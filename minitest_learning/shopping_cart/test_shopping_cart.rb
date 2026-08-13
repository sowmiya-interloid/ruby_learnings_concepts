require 'minitest/autorun'
require_relative 'shopping_cart'

describe Cart do
    before do
        @cart = Cart.new
    end

    it "New cart is empty" do
        assert_empty @cart.items
    end

    it "Adding an item" do
        assert_equal ["apple"], @cart.add_item("apple")
    end

    it "Adding two items" do
        @cart.add_item("apple")
        @cart.add_item("mango")
        assert_equal ["apple","mango"], @cart.items
    end

    it "Removing an item" do
        @cart.add_item("orange")
        @cart.add_item("apple")
        @cart.remove_item("orange")

        assert_equal ["apple"], @cart.items
    end

end
