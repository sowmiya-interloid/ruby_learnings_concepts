# Using Procedural Language

def averagefind(name,mark)
    p "The sum of the mark is #{mark.sum}"
    p "The length is #{mark.length}"

    avg= mark.sum/mark.length
end


name="priya"

marks=[56,89,78,98]

p "The avg mark is #{averagefind(name,marks)}"

p "=============================================================================================================================="


# Using OOPS concepts

p "Student Class"

class Student
    def initialize(name,mark)
        @name=name
        @mark=mark
    end

    def getname
        @name
    end

    def getmarks
        @mark
    end

    def average

        @mark.sum/@mark.size
    end


end

name="Naveena"

marks=[67,89,90,98]

stu=Student.new(name,marks)

p stu.getname

p stu.getmarks

p stu.average

p stu.class


stu1=Student.new("sowmiya",[78,67,56,89])
p stu1.average

p stu.equal?(stu1)

p "============================================================================================="

# Book class

p "Book Class"

class Book
    
    def initialize(title,price)

        @title=title
        @price=price
    end

    def getbook
        @title
    end

    def getprice
        @price
    end


end

b1=Book.new("Ruby",599)
p "#{b1.getbook} - #{b1.getprice}"


b2=Book.new("Python",699)
p "#{b2.getbook} - #{b2.getprice}"

b3=Book.new("Java",499)
p "#{b3.getbook} - #{b3.getprice}"

p "============================================================================================="

#Employee class


class Employee
    def initialize(name,salary)
        @name=name
        @salary=salary
    end

    def getname_sal
        "#{@name} - #{@salary}"
    end

    def raise_pay(amount)
        @salary=@salary+amount
    end
end

e1=Employee.new("priya",20000)

p e1.getname_sal

p "The raise pay is #{e1.raise_pay(5000)}"


p "============================================================================================="

#BankAccount class

class Bank_Account
    def initialize(bal=0)
        @bal=bal
    end

    def withdraw(amount)
        if(amount<@bal)
            @bal=@bal-amount
        else
            "Invalid Amount!!!!!!!!!!!!"
        end
    end


    def depoist(amount)
        @bal=@bal+amount
    end

end


p "==========user 1========================="

b1=Bank_Account.new(50000)

p "The withdraw Amount successfully!!! now the total bal is  #{b1.withdraw(2000)}"


p "The Deposit Amount is added now the total bal is  #{b1.depoist(20000)}"

p "========user 2============================"

b2=Bank_Account.new

p "#{b2.withdraw(2000)}"

p "The Deposit Amount is added now the total bal is  #{b2.depoist(30000)}"

p "============================================================================================="





