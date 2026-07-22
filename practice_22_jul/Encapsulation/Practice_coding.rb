# 1======================================================


class Student

    attr_reader:name

    def initialize(name)
        @name=name
    end

    def mark_system(mark)
        grade_helper(mark)
    end

    private  
    def grade_helper(mark)
        if(mark>=90)
            "A"
        elsif(mark>=75)
            "B"
        elsif(mark>=50)
            "C"
        else
            "Fail"
        end
    end

end


stu1=Student.new("Sowmiya")

puts stu1.name


puts stu1.mark_system(88)


puts "========================================================"

# 2. ========================================================

class Wallet
    attr_reader :balance

    def initialize(balance)
        @balance=balance
    end


    def add_money(amount)

        @balance=@balance+amount
    end
end


wallet=Wallet.new(8000)

p wallet.balance

p wallet.add_money(1000)

puts "========================================================"

# 3. ========================================================

class Temperature_c_to_f
    attr_reader :temp

    def initialize(temp)
        @temp=temp
    end

    def get_temp
        temp_calculation
    end


    private

    def temp_calculation
        (@temp * 9/5) +32
    end

end

temperature=Temperature_c_to_f.new(37)

p temperature.temp

p temperature.get_temp

