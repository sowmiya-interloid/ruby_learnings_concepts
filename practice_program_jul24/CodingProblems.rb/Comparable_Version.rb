class Version
    include Comparable

    attr_reader :number

    def initialize(number)
        @number=number
    end

    def <=>(nums)
        number <=> nums.number
    end

    def to_s
        "Version #{number}"
    end
end

obj1=Version.new(34)

obj2=Version.new(3)

obj3=Version.new(8)

obj4=Version.new(7)

versions=[obj1,obj2,obj3,obj4]
puts versions

res=versions.sort
p res
