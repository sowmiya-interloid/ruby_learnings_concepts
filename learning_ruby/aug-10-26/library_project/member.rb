class Member
    attr_reader :id, :name, :borrowed_books

    def initialize(id, name)
        @id=id
        @name=name
        @borrowed_books=[]
    end

    def borrow_book(book)
        @borrowed_books << book
    end

    def return_book(book)
        raise "Book is not borrowed by this member" unless @borrowed_books.include?(book)
        @borrowed_books.delete(book)
    end
end