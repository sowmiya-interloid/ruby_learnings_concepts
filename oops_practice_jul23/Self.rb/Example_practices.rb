class Counter
    class << self
        def total
            @total ||= 0
        end

        def add
            @total=total+1
        end
    end
end

p Counter.add
p Counter.add
p Counter.add
p Counter.add
p Counter.add
p Counter.add
p Counter.add
p Counter.add
p Counter.total

# ====================================================
class Student
    
    attr_accessor :name
    
    def rename(n)
        self.name=n
    end

end

stu=Student.new
puts stu.rename("sowmiya")

# ====================================================

class Counter1

    attr_accessor :count

    def self.count
        @@count ||= 0
    end

    def self.add
        @@count=self.count+1
    end
end

Counter1.add
Counter1.add

p Counter1.count

Counter1.add
Counter1.add

p Counter1.count

# ====================================================

class Calculator
    def initialize
    @v = 0
    end
    
    def add(x)
        @v=@v+x
        self
    end
    def result
        @v
    end
end

calc=Calculator.new
p calc.add(2).add(90).add(100).result