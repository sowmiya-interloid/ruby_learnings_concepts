class Library
    attr_reader :books
    def initialize
        @books = []
    end 

    def add_book(book)
        @books << book
    end

    def remove_book(book)
        @books.delete(book)
    end

    def has_book?(book)
        @books.include?(book)
    end
end
