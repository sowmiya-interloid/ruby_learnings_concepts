require "minitest/autorun"
require_relative "calculator"

describe Calculator do 
    before do
        @calculator = Calculator.new
    end
    
    it "add two numbers" do
        assert_equal 10, @calculator.add(5,5)
    end

    it "subtracts two numbers" do
        assert_equal 2, @calculator.subtract(9,7)
    end

    it "Multiply two numbers" do
        assert_equal 10, @calculator.multiply(5,2)
    end
end


