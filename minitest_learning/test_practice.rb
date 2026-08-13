# assert_equal ===> equal 
# assert ====> true
# refute ====> false
# assert_nil ====> nil value
# refute_nil ====> not a nil value
# assert_empty ====> check the empty[]
# refute_empty ====> Not a Empty


# setup ===> like before
# teardown ===> like after

require "minitest/autorun"

class PracticeTest < Minitest::Test
    def test_number_is_equal
        assert_equal 20, 15+5
    end
    def test_number_is_positive
        number = 29
        assert number > 0
    end
    def test_number_is_not_positive
        number = 80
        refute number < 0
    end
    def test_number_is_nil
        number = nil
        assert_nil number
    end
    def test_number_is_not_nil
        number = "Sowmiya"
        refute_nil number
    end
    def test_array_is_empty
        fruits = []
        assert_empty fruits
    end
    def test_array_is_not_empty
        fruits = ["Mango","Apple"]
        refute_empty fruits
    end
end