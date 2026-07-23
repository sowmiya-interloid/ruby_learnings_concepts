class Animal

    def move
        "Based on the animal moving will be changed"
    end

end

class Bird < Animal

    def move

        "Birds are Flying"
    end

end


class Dog < Animal

    def move
        "Dogs are Walking"
    end
end


class Duck < Animal
    def move
        "Ducks are swimming and walking"
    end
end


p Animal.new.move

p Bird.new.move

p Dog.new.move

p Duck.new.move