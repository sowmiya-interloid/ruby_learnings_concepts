class Student

    def initialize(name,course,grade)
        @name=name
        @course=course
        @grade=grade
    end

    [:name,:course,:grade].each do |student|
        define_method(student) do
            instance_variable_get("@#{student}")
        end
    end
end


student=Student.new("Sowmiya","Full stack","B")
method="name"

puts student.public_send(method)

p "=================================================="

# puts student.instance_variable_get(:@name)
# puts student.instance_variable_get(:@course)
# puts student.instance_variable_get(:@grade)

[:@name,:@course,:@grade].each do |studentdata|
    puts student.instance_variable_get(studentdata)
end 

p "=================================================="

puts student.instance_variable_set(:@name,"anitha")



