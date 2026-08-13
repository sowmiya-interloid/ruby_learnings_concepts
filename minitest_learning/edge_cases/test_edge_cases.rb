require 'minitest/autorun'
require_relative 'edge_cases'

class TestCalculateMark < Minitest::Test
    def setup
        @calc=CalculateMark.new(40)
        
    end
    def test_mark_40
        assert @calc.mark
    end
    def test_mark_39
        @calc1=CalculateMark.new(39)
        refute @calc1.mark
    end
    def test_mark_0
        assert_raises(StandardError) do
            CalculateMark.new(0).mark
        end
    end

    def test_mark_41
        assert @calc.mark
    end

    def test_mark_1
        @calc=CalculateMark.new(1)
        refute @calc.mark
    end

    def test_mark_negative
        error = assert_raises(StandardError) do
            CalculateMark.new(-10).mark
        end
        assert_equal "Invalid mark", error.message
    end


end