require "minitest/autorun"
require_relative "calculator"


class CalculatorTest < Minitest::Test
    def test_add

        calculator = Calculator.new

        assert_equal 5,calculator.add(2,3)

    end
end