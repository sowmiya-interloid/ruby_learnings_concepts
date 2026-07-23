# ==========Without Inheritance=============

# class Dog
#     def eat
#         "eating"
#     end

#     def bark
#         "woof"
#     end
# end

# animal=Dog.new

# p animal.eat
# p animal.bark

# # Another Animal

# class Cat
#     def eat
#         "eating"
#     end

#     def meow
#         "Meow"
#     end
# end

# animal=Cat.new

# p animal.eat
# p animal.meow

# Here eating method was repeated so we are going to Inheritence


# class Animal
#     def eat
#         "eating"
#     end
# end

# class Dog < Animal

#     def bark
#         "woof"
#     end
# end

# p Dog.new.eat

# p Dog.new.bark


# p "=========================================================="

# class Vehicle 
#     def start
#         "Engine started"
#     end
# end

# class Car < Vehicle
#     def wheels
#         4
#     end
# end


# p Vehicle.new.start

# p Car.new.wheels

# p Car.new.start

# p "=========================================================="

# # Using Protected Methods==========================


# class Animal

#     def initialize(weight)

#         @weight=weight
#     end

#     # def heavier_than?(dog2)

#     #     if(weight>dog2.weight)
#     #         "Dog 1 is Heavier"
#     #     else
#     #         "Dog 2 is Heavier"
#     #     end
#     # end

#     def acesstheweight

#         weight
#     end

#     protected

#     def weight
#         @weight
#     end

        

# end



# class Dog < Animal

#     def introduce
#         "I am a Dog"
#     end 
# end


# dog1= Dog.new(40)
# dog2=Dog.new(60)

# p dog1.introduce

# # p dog1.heavier_than?(dog2)

# p dog1.acesstheweight


# ==========Method Overriding=================

class Animal
    def speak
        "Some sound"
    end
end

class Dog < Animal

    def speak
        super + " like Bark"
    end
end

p Dog.new.speak


