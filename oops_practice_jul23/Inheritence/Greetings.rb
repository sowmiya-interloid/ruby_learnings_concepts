class Parent

    def greetings

        "Hi Hello Welcome!!!!"

    end

end

class Child < Parent

    def greetings

        super + " Child Class"

    end

end


p Parent.new.greetings

p Child.new.greetings