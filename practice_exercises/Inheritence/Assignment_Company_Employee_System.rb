class Employee

    def initialize(name,id,sal)
        @name=name
        @id=id
        @sal=sal
    end

    def work
        "Employee is working"
    end

    def details

        "Name: #{@name} id: #{@id} sal: #{@sal}"
    end

    def sal
        @sal
    end

end


class Developer < Employee

    def initialize(name,id,sal,programming_language)
        super(name,id,sal)
        @programming_language=programming_language
    end

    def details

        super + "  Programming_language: #{@programming_language}"
    end

    def work
        "Developing applications using #{@programming_language}"
    end
end

class Tester < Employee

    def initialize(name,id,sal,testing_tool)
        super(name,id,sal)
        @testing_tool=testing_tool
    end

    def details

        super + " Testing tool: #{@testing_tool}"
    end
    
    def work
        "Testing applications using #{@testing_tool}"
    end
end

class Manager < Employee

    def initialize(name,id,sal,bonus_amount)
        super(name,id,sal)
        @bonus_amount=bonus_amount
    end

    def sal
        "The total sal is #{@sal+@bonus_amount}"
    end
    
    
    def work
        "Managing the team"
    end

    def details

        super + " bonus_amount: #{@bonus_amount}"
    end

end

emp=Employee.new("Sowmiya",22363,10000)

p emp.work

p emp.details

p emp.sal

p "================================================================"

dev=Developer.new("Sowmiya",22363,10000,"ruby")

p dev.work

p dev.details

p "================================================================"

test=Tester.new("priya",56790,20000,"Java Selenium")

p test.work

p test.details

p "================================================================"

manager=Manager.new("Meera",45678,50000,10000)

p manager.work

p manager.details


p manager.sal
