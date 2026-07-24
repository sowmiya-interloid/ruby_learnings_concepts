# 1====================================

class Circle

    def initialize(radius)
        @radius=radius
    end

    def area

        3.14 * @radius * @radius

    end

end


class Rectangle

    def initialize(length,width)
        @length=length
        @width=width
    end

    def area
        @length*@width
    end
end

class Square

    def initialize(square)
        @square=square
    end

    def area
        @square * @square
    end
end

def run(dev)

    p dev.area
end

[Circle.new(4),Rectangle.new(5,4),Square.new(5)].each do |n|
    run(n)
end


p "====================================================="


# 2====================================


class Bird

    def fly 
        "A Bird can fly.."
    end
end 

class Dog

    def bark
        "A Dog is barking.."
    end
end

def checkmethod(ch)

    if(ch.respond_to?(:fly))
        p ch.fly
    else
        p "Fly object is not found!!!!"
    end
end

[Bird.new,Dog.new].each do |n|
    checkmethod(n)
end

p "====================================================="


# 3====================================

class Rubylang
    
    def pgm
        p "I am a Ruby Pgm Language"
    end
end

class Java

    def pgm
        p "I am a Java Pgm Language"
    end
end

class Python

    def pgm
        p "I am a Python pgm Language"
    end

end

def usingEach(n)
    if(n.respond_to?(:pgm))
        n.pgm
    else
        p "Sorry Not Found.."
    end
end


[Rubylang.new,Python.new,Java.new].each do |pgm|
    usingEach(pgm)
end

p "====================================================="


# 4====================================

class Filelike

    def read
        "I'm read the file"
    end
end

class StringIOlike

    def read
        "I'm string file"
    end
end

def respondfile(file)
    if(file.respond_to?(:read))
        file.read
    else
        "Not Found.."
    end
end

[Filelike.new,StringIOlike.new].each do |n|
    p respondfile(n)
end

p "====================================================="


# 5====================================

class Printer
    def print(item)
    if item.respond_to?(:to_s)
        p item.to_s
    else
        p "Cannot print this object"
    end
end
end

printer = Printer.new

printer.print("Hello")
printer.print(100)
printer.print([1, 2, 3])
