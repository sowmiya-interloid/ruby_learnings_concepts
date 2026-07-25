class Book
    def test
        "I'm a book class"
    end
end

class Employee
    def test
        "I'm a employee Class"
    end
end


class Student

    def name
        "I'm a Student class"
    end
end

def response(obj)
    if(obj.respond_to?(:test))
        p obj.test
    else
        p "Not a Found!!"
    end
end

stu=Student.new
book=Book.new
emp=Employee.new

response(stu)

response(book)

response(emp)