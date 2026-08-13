require 'minitest/autorun'
require_relative 'calculator.rb'

class CalculatorTest < Minitest::Test
    def setup
        @calculator = Calculator.new
    end
    def test_add
        assert_equal 11, @calculator.add(5,6)
    end
    def test_subtract
        assert_equal 5, @calculator.subtract(10,5)
    end
    def test_multiplication
        assert_equal 20, @calculator.multiply(10,2)
    end
    def test_division
        assert_equal 5, @calculator.division(10,2)
    end
end