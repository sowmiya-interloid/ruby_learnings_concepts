module Walkable

    def walk
        "Hi I'm walk method"
    end
end 

class Person
    include Walkable
end


p Person.new.walk


# ==============================================
p "============================================="

module Greetings

    def greet
        "I'm from greet class"
    end
end

class Child

    def greet
        "I'm from childclass"
    end
    extend Greetings
end

p Child.greet

# ==============================================
p "============================================="

module Constants
    PI=3.14
end

p Constants::PI


# ==============================================
p "============================================="
module Comparable_style
    def compare(obj)
        if(value>obj.value)
            "The 1st Obj is bigger"
        else
            "The 2nd Obj is bigger"
        end
    end
end

class Student
    include Comparable_style

    def initialize(mark)
        @mark=mark
    end

    def value
        @mark
    end
end


stu1=Student.new(90)

stu2=Student.new(98)

p stu1.compare(stu2)


class Employee

    include Comparable_style

    def initialize(salary)
        @salary=salary
    end

    def value
        @salary
    end
end

emp1=Employee.new(100000)

emp2=Employee.new(98765)

p emp1.compare(emp2)


# ==============================================
p "============================================="


module Report
    class Pdf

        def file

            "I'm a PDF file"
        end
    end

    class Csv

        def file
            "I'm a CSV file"
        end
    end
end


p Report::Pdf.new.file

p Report::Csv.new.file


# ==============================================
p "============================================="


module LoggerModule

    def Greetings

        p "Before greet...."

        res=super

        "After greet...."
    
    end
end

class LoggerClass

    prepend LoggerModule


    def Greetings
        p "HI I'm from Loggerclass"
    end
end

l=LoggerClass.new

p l.Greetings







