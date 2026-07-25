class Car
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.count
        @@count
    end

end

c1 = Car.new
c2 = Car.new
c3 = Car.new

puts Car.count


