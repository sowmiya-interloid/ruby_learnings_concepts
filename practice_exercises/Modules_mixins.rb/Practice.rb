puts self
# ===================include==========================

module Greetable

    def greetings

        "Hi, I am #{name}"
    end

end



class Person
    
    puts self
    
    
    include Greetable
    
    attr_reader :name

    def initialize(name)
        @name=name
        puts self
    end
end

p Person.new("Ranga").greetings

# ===================extend==========================

module Sayable
    def hello
        "hi from classs"
    end
end

class Robot
    puts self
    extend Sayable
end


p Robot.hello

# ===================prepend==========================

module Loud
    def speak
        "Hello" + " #{super.upcase}"
    end
end

class Dog
    prepend Loud

    def speak
        "woof"
    end
end


p Dog.new.speak

# ===================Modules as Namespaces================

module Payments
    class Stripe
        def pay 
            "via Gpay"
        end
    end
    class Paypal
        def pay
            "phone pay"
        end
    end
end

p Payments::Stripe.new.pay

p Payments::Paypal.new.pay

