class Shape

    def area
        "Area will be calculated here!!!!"
    end
end

class Circle < Shape

    def initialize(radius)
        @radius=radius
    end

    def area

        3.14*@radius*@radius
    end

end

class Square < Shape

    def initialize(size)
        @size=size
    end

    
    def area
        @size*@size
    end
end


circle=Circle.new(4)

p circle.area

square=Square.new(3)

p square.area

