require_relative "../product.rb"

RSpec.describe Product do
    let(:product) {Product.new("Book",200,10)}

    it "validated the product" do
        expect(product).to be_a(Product)
    end

    it "raise the error if empty name presents" do
        expect{
            Product.new("",200,10)
        }.to raise_error(ArgumentError, "name required")
    end

    it "raise the error if the name is nil" do
        expect{
            Product.new(nil,200,10)
        }.to raise_error(ArgumentError, "name required")
    end

    it "valid name" do
        expect(product.name).to eq("Book")
    end

    it "raise error if Zero price" do
        expect{
            Product.new("Book",0,10)
        }.to raise_error(ArgumentError, "price must be positive")
    end

    it "raise error if negative price" do
        expect{
            Product.new("Book",-20,10)
        }.to raise_error(ArgumentError, "price must be positive")
    end

    it "valid price" do 
        expect(product.price).to eq(200)
    end

    it "raise error if stock is negative" do
        expect{
            Product.new("Book",70,-90)
        }.to raise_error(ArgumentError, "stock cannot be negative")
    end

    it "valid stock" do
        expect(product.stock).to eq(10)
    end

    it "product available?" do
        expect(product.available?).to eq(true)
    end

    it "product not available" do
        product = Product.new("Book",200,0)
        expect(product.available?).to eq(false)
    end

    it "reduce stock" do
        product.reduce_stock(4)
        expect(product.stock).to eq(6)
    end

    it "raise the error if quantity is negative means" do
        expect{
            product.reduce_stock(-2)
        }.to raise_error(ArgumentError, "quantity must be positive")
    end

    it "raise the error if Invalid quantity" do
        expect{
            product.reduce_stock(0)
        }.to raise_error(ArgumentError, "quantity must be positive")
    end

    it "raise the error - quantity is more than stock" do
        expect{
            product.reduce_stock(70)
        }.to raise_error(StandardError, "not enough stock")
    end
end