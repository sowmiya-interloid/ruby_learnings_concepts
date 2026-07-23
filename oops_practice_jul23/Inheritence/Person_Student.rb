class Person

    def initialize(name)
        @name=name
    end
    def name
        "#{@name}"
    end
end

class Student < Person

    def name

        "My name is : " +super
    end
end


stu=Student.new("Abi")

p stu.name

