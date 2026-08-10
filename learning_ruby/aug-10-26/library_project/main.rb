require_relative "book"
require_relative "library"
require_relative "member"
require_relative "storage"

library = Library.new

book1 = Book.new(101,"Ruby","Matz")
book2 = Book.new(102,"Java","James")
book3 = Book.new(103,"Python","Guido")

library.add_book(book1)
library.add_book(book2)
library.add_book(book3)


member1 = Member.new(1,"Kaviya")
member2 = Member.new(2,"Priya")


library.add_member(member1)
library.add_member(member2)

begin

    puts "Show Books"

    library.show_books

    p "===================================================="

    puts "Show Members"

    library.show_members

    p "===================================================="

    puts "issue book"

    library.issue_book(101,1)
    
    p "===================================================="

    puts "Show Books"

    library.show_books

    p "===================================================="
    puts "issue book"

    library.issue_book(102,2)
    
    p "===================================================="
    
    puts "Show Books"

    library.show_books

    p "===================================================="

    puts "return book"

    library.return_book(101,1)
    
    p "===================================================="
    
    puts "Show Books"

    library.show_books

    p "===================================================="

    puts "save json"
    
    Storage.save(library, "data/library.json")



rescue StandardError => e
    puts "Error : #{e.message}"
end



