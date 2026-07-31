# 1. Create a Student class with instance variables @name and @age. Use define_method to create getter methods dynamically.

class Student 
    def initialize(name,age)
        @name=name
        @age=age
    end

    [:name,:age].each do |value|
        define_method(value) do 
            instance_variable_get("@#{value}")
        end
    end
end

student=Student.new("User",23)

puts student.name

puts student.age

p "==========================================================================================================================================="

# 2. Create a Settings class. Use instance_variable_set inside the constructor to store theme and language.


class Settings
    def initialize(theme,language)
        instance_variable_set("@theme",theme)
        instance_variable_set("@language",language)
    end


    [:theme,:language].each do |settings|
        define_method(settings) do
            instance_variable_get("@#{settings}")
        end
    end
end

setting=Settings.new("Dark","English")

puts setting.theme
puts setting.language

p "==========================================================================================================================================="

# 3. Print the values using instance_variable_get.

class Student 
    def initialize(name,age)
        @name=name
        @age=age
    end
end

student=Student.new("User",23)


[:@name,:@age].each do |val|
    puts student.instance_variable_get(val)
end

p "==========================================================================================================================================="
# 4. Given this array:

# [:name, :email, :phone]

# Use define_method to create getter methods dynamically.


class Student 
    def initialize(name,email,phone)
        @name=name
        @email=email
        @phone=phone
    end

    [:name,:email,:phone].each do |value|
        define_method(value) do 
            instance_variable_get("@#{value}")
        end
    end
end

student=Student.new("User","user123",7890765)

puts student.name

puts student.email

puts student.phone

p "==========================================================================================================================================="

# 5. Create a class Calculator. Use public_send to call methods like:

# calculator.public_send(:add, 5, 3)

class Calculator
    def add(a,b)
        p a+b
    end
end

calc=Calculator.new

calc.add(7,8)

method="add"

p "using public_send"

calc.public_send(method,8,8)
calc.public_send(:add,8,8)

p "==========================================================================================================================================="

# 6. What is the difference between send and public_send? Demonstrate it with one private method.

class Calculator

    def add(a,b)
        a+b
    end
    
    private
    def sub(a,b)
        a-b
    end
end

calculator=Calculator.new

p calculator.send(:add,4,3)
p calculator.send(:sub,4,3)

p calculator.public_send(:add,4,3)
# p calculator.public_send(:sub,4,3)        #Got Error

p "==========================================================================================================================================="
# 7. Create an API class where

# api.get_users

# prints

# Fetching users...

# using method_missing.


class API
    def method_missing(name)

        if name.to_s.start_with?("get_")
            
            puts "Fetching #{name.to_s.gsub("get_","")}"

        else
            super
        end
    
    end

end

api=API.new

api.get_user

api.get_emails

api.get_password


p "==========================================================================================================================================="

# Add respond_to_missing? so that

# api.respond_to?(:get_users)

# returns true.


class Students
    def hello
        "hello method"
    end

    def respond_to_missing?(name,include_private=false)
        if name.to_s.start_with?("get_")
            
            puts "Fetching #{name.to_s.gsub("get_","")}"

        else
            super
        end
    end
end


student=Students.new

student.respond_to?(:get_users)

p "==========================================================================================================================================="

class Book
    attr_reader :books

    def initialize(&block)
        
        @books=[]
        instance_eval(&block) if block_given?
    end

    def title(items)
        @books << items
    end

    def author(items)
        @books << items
    end
end

book=Book.new do
    title "Ruby"
    author "Matz"
end


p book.books