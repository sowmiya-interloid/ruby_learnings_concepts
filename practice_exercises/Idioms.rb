x=nil
x=["cat","dog"]
if x.nil?
    x ||= []
end
p x

p "========================================"

class User

    attr_accessor :address


    def initialize(address)
        @address=address
    end
end

class Address

    attr_accessor :city
    
    def initialize(city)
        @city=city
    end
end

user=User.new(Address.new("CBE"))

p user&.address&.city     #CBE

user2=User.new(nil)

p user2&.address&.city    #nil

p "========================================"

class Age
    include Comparable

    attr_accessor :age

    def initialize(age)
        @age=age
    end


    def <=>(other)
        age <=> other.age
    end

end

age=Age.new(70)

age1=Age.new(100)

p age.<=>(age1)

p "========================================"


def add(*nums)
    sum=0
    nums.each do |n|
        sum+=n
    end

    sum
end

p add(1,2,3,4,5,6,7,8)

p "========================================"

def greet(name:,greeting:"Hi")
    "#{greeting} #{name}"
end

p greet(name:"Naveena",greeting:"Welcome")

p greet(name:"Sai")

p "========================================"


arr=[1,2,3,4]

p arr.tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}

res= arr.tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}
p res

p "========================================"

result=5.then {|n| n+1}.then{|n| n*10}

p result

result=5.tap {|n| n+1}.tap{|n| n*10}

p result


res= [1,2,3,4].tap {|n| p "before : #{n}"}
    .map {|n| n*4}
    .tap {|n| p "after : #{n}"}
p res
