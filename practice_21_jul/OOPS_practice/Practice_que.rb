class Car

    def initialize(make, model, year)
        @make = make
        @model = model
        @year = year
    end

    def describe
        "#{@make} #{@model} was manufactured in #{@year}."
    end

    def start
        puts "Engine on"
    end

end

car1 = Car.new("Toyota", "Innova", 2022)
car2 = Car.new("Hyundai", "Creta", 2024)

puts car1.describe
car1.start

puts

puts car2.describe
car2.start