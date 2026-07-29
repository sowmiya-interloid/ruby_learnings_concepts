module Swimmable

    def introduce_module
        p "I'm Module"
    end
end
class Animal

    def introduce
        p "I'm Animal"
    end

end

class Dog
    include Swimmable

    def bark
        p "I'm Dog"
    end
end

class Cat
    include Swimmable

    def meow
        p "I'm cat"
    end
end

cat=Cat.new

cat.meow
p cat.class
p cat.class.superclass

p cat.class.ancestors

p Cat.is_a?(Object)

p Cat.is_a?(Class)

p Cat.is_a?(Array)

p cat.respond_to?(:meow)


animal=Animal.new

animal.introduce

p animal.class.ancestors

# ================================================

p Kernel.instance_methods.grep(/puts/)
p Kernel.private_instance_methods.include?(:puts)

