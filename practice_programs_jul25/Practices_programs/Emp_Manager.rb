class Employee

    attr_reader :name, :salary

    def initialize(name,salary)
        @name=name
        @salary=salary
    end

    def display

        puts "Employee name: #{name}"
        puts "Employee salary: #{salary}"
    end
end


class Manager < Employee

    attr_reader :bonus

    def initialize(name,salary,bonus)
        super(name,salary)
        @bonus=bonus
    end

    def total_sal
        @total=salary+bonus
    end

    def display
        super
        puts "Bonus is: #{bonus}"
        puts "Total Salary is: #{total_sal}"
    end

end

manager=Manager.new("Sowmiya",20000,1000)

manager.display

    