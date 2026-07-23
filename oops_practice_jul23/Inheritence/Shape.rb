class Shape
    def initialize(area)
        @size=area
    end

    def area
        "Area method should be overridden"
    end

    def size
        @size
    end

end


class Circle < Shape

    def area
        super + " ------ The area of circe is #{3.14 * size * size}"
    end

end


class Square < Shape

    def area
        super + " ------ The area of Square is #{size * size}"
    end
end


shape=Shape.new(80)
p shape.area

circle=Circle.new(8)

p circle.area

square=Square.new(8)

p square.area
