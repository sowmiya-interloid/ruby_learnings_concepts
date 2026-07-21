class Book

    def initialize(title, author, price)
        @title = title
        @author = author
        @price = price
    end

    def display_details
        puts "Title  : #{@title}"
        puts "Author : #{@author}"
        puts "Price  : ₹#{@price}"
        puts "=============================="
    end

end

book1 = Book.new("Ruby", "Matz", 399)
book2 = Book.new("Java", "James", 450)
book3 = Book.new("Python", "Guido van Rossam", 550)

book1.display_details
book2.display_details
book3.display_details