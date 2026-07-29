#Q1.Squares of Even Numbers

input=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

square_of_even_no=input.select {|n| n.even?}.map {|n| n*n}

p square_of_even_no


p "==================================================================================="

# Q2. Total Cart Value


input=[
    { name: "Pen",  price: 20,  qty: 3 },
    { name: "Book", price: 150, qty: 2 },
    { name: "Bag",  price: 800, qty: 1 }
]

total_cart=input.reduce(0) do |sum,val|
    sum=sum+(val[:qty] * val[:price])
end

p total_cart

p "==================================================================================="

# Q3. Pass and Fail List



list={
    "Alice" => 85,
    "Bob"   => 42,
    "Chris" => 67,
    "David" => 35,
    "Eva"   => 91
}

passed,failed=list.partition do |key,value|
        value>50
    end

p passed
p failed

p "==================================================================================="

# Q4. Clean the Data

input=[[1, nil, 2], [2, 3, nil], [3, [4, nil]]]

solution=input.flatten.compact.uniq

p solution

p "==================================================================================="

# Q5. Group Words by Length

input=["ruby", "go", "rails", "css", "html", "js"]

solution=input.group_by {|word| word.length}

p solution

p "==================================================================================="

# Q6. Word Frequency

input=["ruby", "rails", "ruby","html" ,"rails", "ruby"]

solution=input.each_with_object({}) do |val,hash|
    if(hash[val])
        hash[val]+=1
    else
        hash[val]=1
    end
end

p solution

p "==================================================================================="

# Q7. Rank List

input={
    "Alice" => 78,
    "Bob"   => 92,
    "Chris" => 65,
    "David" => 88
}

solution=input.sort_by {|key,value| -value}

with_index=solution.each_with_index do |value,index|

    puts "#{index+1}. #{value}"
    
end

p "==================================================================================="

# Q8. Extract the Valid Marks

str=["45", "abc", "78", "", "90", "xy"]

solution=str.filter_map do |text|

    if(text.to_i.to_s == text)

        text.to_i
    end
end

p solution

p "==================================================================================="

# Q9. Stock Check Report

input={
    "Pen"    => 12,
    "Book"   => 0,
    "Bag"    => 5,
    "Pencil" => 0
}

using_any=input.any? {|key,val| val==0}

puts "Any item out of stock?      : #{using_any}"


using_all=input.all? {|key,val| val>0}

puts "All items out in?           : #{using_all}"

using_none=input.none? {|key,val| val>50}

puts "No item above 50?           : #{using_none}"

using_one=input.one? {|key,val| val>10}

puts "Exactly one item above 10?  : #{using_one}"

p "==================================================================================="

# Q10. Unique Subject List

input=[
    { name: "Alice", subjects: ["Ruby", "HTML"] },
    { name: "Bob",   subjects: ["CSS", "Ruby"] },
    { name: "Chris", subjects: ["JS", "HTML", "Ruby"] }
]

solution=input.flat_map do |key,value|
    key[:subjects]
end

result=solution.uniq.sort

p result

p "==================================================================================="

# Q11. Write Your Own Iterator

def repeat_task(num)

    if(block_given?)
        i=1
        while(i<=num)
            yield(i)
        i+=1
        end
    else
        puts "No block given "
    end
end


num=3

repeat_task(num) { |round| puts "Task #{round} completed" }

p "==================================================================================="

# Q12. Four Ways to Shout

input=["ruby", "rails", "html"]

# Block========================

res=input.map {|word| word.upcase}

puts "Block : #{res}"

# Proc========================
    
res1=[]
using_proc=Proc.new do|word|
    res1 << word.upcase
end

input=["ruby", "rails", "html"]

input.each do |val|
    using_proc.call(val)
end

puts "Proc : #{res1}"

# Lambda========================
    
res2=[]
using_lambda=lambda do|word|
    res2 << word.upcase
end

input=["ruby", "rails", "html"]

input.each do |val|
    using_lambda.call(val)
end

puts "Lambda : #{res2}"

# &:========================


res=input.map(&:upcase)


puts "Symbol(&:) : #{res}"

p "==================================================================================="

# Q13. Student Class


class Student

    attr_reader :name
    @@total=0
    def initialize(name,mark)
        @name=name
        @mark=mark
        @@total+=1
    end

    def report
        
        p "#{@name} - Average : #{average} - Grade #{grade}"
    end

    private
    def average
        @avg=@mark.sum/@mark.length

    end


    private

    def grade
        if(average>=75)
            "A"
        elsif(average>=60)
            "B"
        else
            "C"
        end
    end
    
    def self.total_students
        @@total
        
    end

end

alice = Student.new("Alice", [80, 90, 85])
bob   = Student.new("Bob",   [50, 45, 60])

alice.report
bob.report
puts "Total Students : #{Student.total_students}" 

p "==================================================================================="


class Employee
    attr_accessor :name
    attr_accessor :base_salary

    def initialize(name,base_salary)
        @name=name
        @base_salary=base_salary
        @employee_type="Employee"
    end


    def details
        p "#{name} (#{@employee_type}) : #{base_salary}"
    end

end

class Manager < Employee



    def initialize(name,base_salary)

        super(name,base_salary)
        @employee_type="Manager"
        

    end

    def bonus
        @base_salary+=@base_salary * 20/100 +5000
    end

    def details
        p "#{name} (#{@employee_type}) : #{bonus} "
    end

end

class Developer < Employee

    def initialize(name,base_salary)

        super(name,base_salary)
        @employee_type="Developer"

    end

    def total_salary
        @base_salary+=@base_salary* 10/100
    end

    def details
        p "#{name} (#{@employee_type}) : #{total_salary}"
    end

end

Employee.new("Raj", 30000).details
Manager.new("Priya", 50000).details
Developer.new("Karthik", 40000).details

p "==================================================================================="


# Q15. Modules – include, extend and prepend


module Printable
    def print_details
        puts "Document : #{@title}"
    end
end

module Trackable
    def created_by
        "Created by : Interloid Team"
    end
end

module Auditable
    def save
        puts "[LOG] save called"
        super
    end
end

module Interloid
    class Document
        include Printable
        extend Trackable
        prepend Auditable
        
        def initialize(title)
            @title = title
        end
        
        
        def save
            puts "#{@title} saved successfully"
        end
    end
end

doc = Interloid::Document.new("Report")

doc.print_details
doc.save
puts Interloid::Document.created_by

p "==================================================================================="
# Q16. Comparable Products

class Product
    
    include Comparable
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def <=>(other)
        @price <=> other.price
    end
end

products = [
    Product.new("Bag", 800),
    Product.new("Pen", 20),
    Product.new("Book", 150)
]

puts products.sort.map(&:name).inspect
puts products.max.name
puts products.min.name
puts Product.new("Pen", 20) < Product.new("Book", 150)

p "==================================================================================="
# Q17. Private vs Protected

class Player
    
    attr_reader :name
    
    def initialize(name, score)
        @name = name
        @score = score
    end

    def beats?(other)
        score > other.score
    end

    def summary
        puts "#{name} scored #{score}"
    end
    
    protected
    
    def score
        @score
    end
end

ada = Player.new("Ada", 90)
bob = Player.new("Bob", 75)

puts ada.beats?(bob)
puts bob.beats?(ada)
ada.summary

begin
    ada.score
rescue NoMethodError
    puts "NoMethodError : score is protected"
end

p "==================================================================================="
# Q18. Closures – Discount Generator

def make_discount(percentage)
    
    lambda do |amount|
        amount - (amount * percentage / 100.0)
    end
end

def make_counter
    count = 0
    
    lambda do
        count += 1
    end
end

ten_percent   = make_discount(10)
fifty_percent = make_discount(50)

puts ten_percent.call(2000)
puts fifty_percent.call(2000)

counter_a = make_counter
counter_b = make_counter

puts counter_a.call
puts counter_a.call
puts counter_b.call

p "==================================================================================="
# Q19. Sales Report

sales = [
    
{ name: "Alice", region: "South", amount: 12000 },
{ name: "Bob",   region: "North", amount: 8000  },
{ name: "Chris", region: "South", amount: 15000 },
{ name: "David", region: "North", amount: 5000  },
{ name: "Eva",   region: "East",  amount: 10500 }
]
sumofamount=sales.sum {|num| num[:amount]}
puts "Total Sales : #{sumofamount}"

avg=sumofamount.to_f/sales.length

puts "Average Sales : #{avg}"


result=sales.group_by {|name| name[:region]}

puts "Region wise Total"

result.each do |key,value|

    total=value.sum {|n| n[:amount]}

    puts "#{key} : #{total}"

end




res=sales.sort_by {|num| -num[:amount]}.first



puts "Top Performer"
puts "#{res[:name]} (#{res[:amount]})"

below_avg= sales.select {|value| value[:amount]<avg}


puts "Below Average Performers"

below_avg.each do |val|

    puts "#{val[:name]}"
end

p "==================================================================================="
# Q20. Library System – Rebuilt with OOP

class Book
    attr_reader :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def to_s
        "#{title} by #{author}"
    end
end

module Searchable
    def find_book(title)
        @books.find { |book| book.title == title }
    end
end

class Library
    include Searchable

    @@total_libraries = 0

    def initialize
        @books = []
        @@total_libraries += 1
    end

    def add_book(book)
        @books << book
        puts "Book Added Successfully"
    end

    def borrow_book(title)
        book = find_book(title)
        if book
            @books.delete(book)
            puts "Book Borrowed Successfully"
        else
            puts "Book Not Available"
        end
    end

    def return_book(book)
        @books << book
        puts "Book Returned Successfully"
    end

    def available_books
        if @books.empty?
            puts "No Books Available"
        else
            puts "\nAvailable Books"
            @books.each do |book|
            puts book
            end
        end
    end

    def self.total_libraries
        @@total_libraries
    end
end

library = Library.new

loop do
    puts "\n===== Library Menu ====="
    puts "1. Add Book"
    puts "2. Borrow Book"
    puts "3. Return Book"
    puts "4. View Available Books"
    puts "5. Exit"

    print "Choice : "
    choice = gets.to_i

    case choice
    when 1
        print "Book Title : "
        title = gets.chomp
        print "Book Author : "
        author = gets.chomp
        
        library.add_book(Book.new(title, author))

    when 2
        print "Book Title : "
        title = gets.chomp

        library.borrow_book(title)

    when 3
        print "Book Title : "
        title = gets.chomp

        print "Book Author : "
        author = gets.chomp

        library.return_book(Book.new(title, author))

    when 4
        library.available_books

    when 5
        puts "Thank You!"
        break

    else
        puts "Invalid Choice"
    end
end

