puts self
class Student

    def self.school
        "Hii school!!!"
    end
end

p Student.school

# 2===================================

class Hello

    def self.build
        "i'm a cls method"
    end
end

p Hello.build

# 3===================================

class Student
    
    attr_accessor :name
    
    def rename(n)
        self.name=n
    end

end

stu=Student.new
puts stu.rename("ruby")
# ====================

class Animal
    attr_accessor :moves
    
    def dog(move)
        self.moves=move
    end
end

animal=Animal.new
puts animal.dog("walk")

# 4===================================


class Sum
    def initialize
        @sum=0
    end

    def sumofnum(num)
        @sum=@sum+num
        self
    end

    def result
        @sum
    end
end

s1=Sum.new
p s1.sumofnum(10).sumofnum(20)

p s1.sumofnum(10).sumofnum(10).result