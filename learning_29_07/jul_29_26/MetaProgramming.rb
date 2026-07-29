class Student

    def tamil
        puts "Tamil"
    end

    def english
        puts "english"
    end
end

student=Student.new

student.tamil
student.english
p "========================================================="

# =======================using Meta Programming===============

class Student

    [:tamil,:english].each do |subject|
        define_method(subject) do 
            puts subject.to_s.upcase
        end
    end
end

student=Student.new

student.tamil
student.english

p "========================================================="

class Student
    
    [:tamil, :english, :maths, :science].each do |sub|

    define_method(sub) do
        puts "#{sub} class"
    end

    end

end
student=Student.new

student.tamil
student.english
student.maths
student.science

p "==================Method Missing======================================="

class Employee

    def method_missing(name)
        p "#{name} is missing!!!!!"
    end

end

emp=Employee.new
emp.hello


p "==================respond_to_missing======================================="

class Employee

    def respond_to_missing?(name,include_private = false)
        p "hi"
        name == :hello || super
    end

end

emp=Employee.new

p emp.respond_to?(:hello)