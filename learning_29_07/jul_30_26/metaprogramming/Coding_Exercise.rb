# Q1 ===========================================


class Student

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


stu=Student.new("Yamuna",22,"CBE")

puts stu.name
puts stu.age
puts stu.city

# Q2 ===========================================
p "======================================================"

class Settings

    def initialize(theme,language)
        @theme=theme
        @language=language
    end

    [:theme,:language].each do |setting|
        define_method(setting) do

            instance_variable_get("@#{setting}")
        end
    end
end

settings=Settings.new("Dark","English")
puts settings.theme
puts settings.language

# Q3 ===========================================

p "======================================================"

class ClientAPI

    def method_missing(name,*args)
        if name.to_s.start_with?("get_")
            "Fetch #{name.to_s.gsub("get_","")}"
        else
            super
        end
    end
end

client=ClientAPI.new

puts client.get_users

puts client.get_emails

# Q4 ===========================================

p "======================================================"


class PrintsPublicInstances
    def print
        "I'm a print method"
    end

    def sayhello
        "I'm a hello method"
    end

    def sayhii
        "I'm a hii method"
    end
end

p PrintsPublicInstances.instance_methods(false)

# Q5 ===========================================

p "======================================================"


class Person
    def sayhii
        "Say Hiii"
    end

    def sayhello
        "Say Hello"
    end

    def saybye
        "Say Bye!!!!!"
    end
end

person=Person.new

methods=["sayhii","sayhello","saybye"]

methods.each do |item|
    puts person.public_send(item)
end

# Q6 ===========================================

p "======================================================"

class Recipe
    
    attr_reader :ingredients

    def initialize(&block)
        @ingredients = []
        instance_eval(&block) if block_given?
    end

    def ingredient(item)
        @ingredients << item
    end
end

recipe = Recipe.new do
    ingredient("Tomato")
    ingredient("Onion") 
    ingredient("Salt")
    ingredient("Oil")
end

p recipe.ingredients