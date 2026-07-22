# 1. ----Car Class----

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

p "========================================================================================================="

# 2. ----Rectangle class ----

class Rectangle

    def initialize(width,height)
        @width=width
        @height=height
    end

    def area
        "The area of the rectangle is #{@width * @height}"
    end

end


width=400
p "Width of the Rectangle is #{width}"


height=400
p "Height of the Rectangle is #{height}"

rect=Rectangle.new(width,height)

p rect.area

p "========================================================================================================="

# 3. ----Timer class ----

class Timer
    def initialize
        @count=0
    end

    def tick
        @count=@count+1

    end
end


timer=Timer.new

p timer.tick
p timer.tick
p timer.tick
p timer.tick
p timer.tick
p timer.tick

p "========================================================================================================="

# 4. ----Playlist class ----

class Playlist

    def initialize
        @song=[]
        
    end

    def add(song)
        @song << song
    end

    def count

        count=0

        @song.each do |song|
            count+=1
        end

        count
        
    end
        
end

songs=Playlist.new

songs.add("Believer")
songs.add("Shape of You")
songs.add("Perfect")
songs.add("Levitating")
songs.add("Blinding Lights")
songs.add("Arabic Kuthu")
songs.add("Vaathi Coming")


p "total songs are : #{songs.count}"


    
