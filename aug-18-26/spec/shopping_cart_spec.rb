require_relative "../shopping_cart.rb"

describe Cart do

    let(:cart) {Cart.new}

    it "cart initially is empty" do
        expect(cart).to be_empty
    end

    it "adding book puts it into the cart" do
        cart.add("Apple")
        expect(cart.items).to include("Apple")
    end

    it "adding book puts it into the cart" do
        cart.add("Book")
        expect(cart.items).to include("Book")
    end

    it "cart includes book" do
        cart.add("Book")
        expect(cart.has_item?("Book")).to eq(true)
    end

    it "cart has Book" do
        cart.add("Book")
        expect(cart).to have_item("Book")
    end

    it "cart is not empty after adding an item" do
        cart.add("Apple")
        cart.add("Kiwi")
        expect(cart.items).not_to be_empty 
    end

    it "cart has exactly Book and Pen" do
        cart.add("Book")
        cart.add("Pen")
        expect(cart.items).to contain_exactly("Book","Pen")
    end
end