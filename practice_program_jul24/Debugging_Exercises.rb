doubled=[1,2].each {|n| n*2}
p doubled

doubled=[1,2].map {|n| n*2}
p doubled

p "======================================"

p [1,2,3].map {|a| a}

p [1,2,3].each_with_object([]) {|n,a| a << n+1}

p "======================================"

p (1..9).select {|n| n.even?}

p "======================================"

# #LocalJumpError-Because the respective block is not present-solution

def m
    yield
end
m { p "Hi Hello"

} 

p "======================================"

def test
    procex = proc { return 1 }
    procex.call
end

p test

p "======================================"


sum=0
[1,2].each do |n|
    sum=sum+n
end
p sum

p "======================================"


arr=[3,4,1,5,2]
p arr.sort {|a,b| b<=>a}
p arr.sort {|a,b| a<=>b}

p "======================================"

class User
    attr_accessor :name
    def initialize(name)
        if(name==nil)
            @name||="kavya"
        else
            @name=name

        end
    end
end

user=User.new("Sowmi")
user1=User.new(nil)
puts user.name

puts user1.name

p "======================================"

# class Dog < Animal,Pet  -----> Syntax Error

module Animal
    def happy
        "I'm happy"
    end
end

module Pet
    def petanimal
        "I'm a petanimal"
    end
end

class Dog
    include Animal
    include Pet

    def dogclass
        "My name is happy"
    end

end

dog=Dog.new

p dog.happy
p dog.petanimal
p dog.dogclass

p "======================================"

class Counter
    def initialize
        @count=0
    end

    def increment
        @count+=1
    end
end

counter=Counter.new

counter.increment
counter.increment
counter.increment

p counter.increment

p "======================================"


class Name

    def self.name=(n)
        @name=n
    end

    
end

puts Name.name="sowmiya"

p "======================================"

names=["ruby","java","python"]

result = names.map {|name| name.upcase!}

p names

p result


names=["ruby","java","python"]

result = names.map {|name| name.upcase}

p names

p result



names=["RUBY","java","python"]

result = names.map {|name| name.upcase!}

p names

p result

p "======================================"

# If x=5 is always true because its only assigning the value
x=10
if(x=5)
    p "hii"
end

p "======================================"

hash={
    name:"ruby",
    inventor:"Matz"
}

res=hash.each_with_object({}) do |(k,v),hash|
    hash[k]=v
end

p res

p "======================================"

p 1.eql?(1.0)  #it consider same value and same type

p 1==1.0       #It consider only same value