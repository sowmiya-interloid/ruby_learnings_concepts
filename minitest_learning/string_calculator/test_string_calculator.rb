require 'minitest/autorun'
require_relative 'string_calculator'

describe StringCalculator do
    before do
        @string_calc = StringCalculator.new
    end
    it "add two strings and give as a Integer" do

        assert_equal 30, @string_calc.add("10","20")

    end

    it "adds another pair of strings" do
        assert_equal 12, @string_calc.add("5", "7")
    end
end