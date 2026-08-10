class Library

    attr_reader :books, :members

    def initialize
        @books=[]
        @members=[]
    end

    def add_book(book)
        @books << book
    end

    def add_member(member)
        @members << member
    end

    def find_book(id)
        @books.find {|book| book.id == id}
    end
    
    def find_member(id)
        @members.find {|member| member.id == id}
    end

    def issue_book(book_id,member_id)
        book = find_book(book_id)
        member = find_member(member_id)

        raise "Book not found" unless book
        raise "Member not found" unless member
        
        book.issue

        member.borrow_book(book)

        "#{book.title} is issued to #{member.name}"
    end

    def return_book(book_id,member_id)
        book = find_book(book_id)
        member = find_member(member_id)

        raise "Book not found" unless book
        raise "Member not found" unless member

        member.return_book(book)
        book.return_book
    end

    def show_books
        @books.each do |book|
            if book.available?
                status = "Available"
            else
                status = "Not Available"
            end
            puts "#{book.id}-#{book.title}-#{book.author}-#{status}"
        end
    end

    def show_members
        @members.each do |member|
            puts "#{member.id} - #{member.name}"
        end
    end

end