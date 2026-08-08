class Student

    attr_reader :age

    def initialize(age)
        @age=age
    end
end

RSpec::Matchers.define :be_adult do

    match do |stu|
        stu.age >= 18
    end

    description do
        p "be an adult"
    end

    failure_message do |student|
        "expected #{student.age} to be an adult, but it is below 18"
    end

    failure_message_when_negated do |student|
        "Expected #{student.age} not to be an adult"
    end
end

RSpec::Matchers.define :have_age do |expected_age|

    match do |student|
        student.age == expected_age
    end

end

RSpec.describe Student do
    it "Checking the adult or not" do
        stu=Student.new(60)
        expect(stu).to be_adult
    end
end

RSpec.describe Student do
    it "Checking the adult or not" do
        stu=Student.new(60)
        expect(stu).to have_age(60)
    end
end

RSpec.describe Student do
    it "checks negative adult expectation" do
        stu = Student.new(60)

        expect(stu).not_to be_adult
    end
end