class Book

    def initialize(title,author,price)
        @title=title
        @author=author
        @price=price
    end

    def display_details

        "#{@title}-#{@author}-#{@price}"
    end

end


book1=Book.new("Ruby","Matz",1995)

puts book1.display_details

book2=Book.new("Java","James Gosling",1995)

puts book2.display_details

book3=Book.new("Python","Guido van Rossam",1991)

puts book3.display_details