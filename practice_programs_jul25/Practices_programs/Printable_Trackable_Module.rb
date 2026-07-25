module Printable
    def print_me
        puts self.inspect
    end
end


module Trackable
    def track_me
        puts Time.now
    end
end

class Book

    include Printable
    include Trackable

    attr_reader :name,:author


    def initialize(name,author)
        @name=name
        @author=author
    end

end

class Employee
    
    include Printable
    include Trackable

    attr_reader :name,:salary

    def initialize(name,salary)
        @name=name
        @salary=salary
    end
end


emp=Employee.new("Sowmiya",10000)

emp.print_me
emp.track_me

p "=============================================================="

book=Book.new("Ruby","Matz")

book.print_me
book.track_me
