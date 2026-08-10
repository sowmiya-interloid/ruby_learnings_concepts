class Book

    attr_reader :id, :title, :author

    def initialize(id,title,author)
        @id=id
        @title=title
        @author=author
        @available=true
    end


    def available?
        @available
    end


    def issue
        
        raise "The book is already issued" unless @available

        @available = false
    end



    def return_book
        
        raise "The Book is already available" if @available

        @available = true
    end

end