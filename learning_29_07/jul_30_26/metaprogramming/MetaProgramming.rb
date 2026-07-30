class Person

    def initialize(name,age,city)
        @name=name
        @age=age
        @city=city
    end
    def name
        @name
    end

    def age
        @age
    end 

    def city
        @city
    end

end


person=Person.new("abc",23,"CBE")

puts person.name

puts person.age

puts person.city

p "============================================================           "

# ===========using Metapgmming=================================

class Person1

    def initialize(name,age,city)
        @name=name
        @age=age
        @city=city
    end


    [:name,:age,:city].each do |details|
        
        define_method(details) do

            instance_variable_get("@#{details}")
        end
    end
end

person1=Person1.new("abc",23,"CBE")

puts person1.name

puts person1.age

puts person1.city

p "============================================================           "

# ===========Send method....=================================

class Calculator
    def add(a,b)
        a+b
    end
end


calc=Calculator.new

p calc.add(4,5)

operation="add"

puts calc.send(operation,5,7)

p "============================================================           "

# ===========methods and instance_methods=================================

class Person2

    def speak

        "Pesrson--- speak"
    end


    def walking

        "Person ---- walking"
    end
end


person=Person2.new

p person.methods

p person.methods.size


p   Person2.instance_methods.size


p "============================================================           "

# ===========Reading and Instance Variables=================================

class User
    def initialize
        @name="Sam"
    end
end


u=User.new

p u.instance_variable_get(:@name)
p u.instance_variable_set(:@name,"Ankita")
p u.instance_variable_get(:@name)