class String
    def self.greet
        "Hello #{self}"
    end
end

p String.greet

p "================================================="

class String
    def greet
        "Hello!"
    end
end

puts "Ruby".greet


puts "Ruby".methods.include?(:greet)

puts "Ruby".methods.include?(:hiii)

puts "Ruby".methods.include?(:upcase)


p "======================Modifying an Existing Method==========================="

class String

    def upcase

        "Here the upcase method is overidden"

    end

end

puts "Ruby".upcase

p "=================================================="

class Array

    def second
        self[4]
    end

end


arr=[1,2,3,4,5]

p arr.second

p "+==============using refine keyword=================="

module Change

    refine String do
        def upcasemodify
            upcase + "!"
        end
    end
end


using Change
p "hi".upcasemodify

