require "minitest/autorun"
require_relative "student"

class StudentTest < Minitest::Test
    def setup
        @student = Students.new(name: "Sowmiya",mark: 60)
        @student1 = Students.new(name: "Meera" ,mark: 30)
    end
    def test_initialize_name
        assert_equal "Sowmiya", @student.instance_variable_get(:@name)
    end
    def test_initialize_marks
        assert_equal 60, @student.instance_variable_get(:@mark)
    end
    def test_validate_the_mark_pass
        assert @student.validate_the_mark
    end
    def test_validate_the_mark_fail
        refute @student1.validate_the_mark
    end
end
