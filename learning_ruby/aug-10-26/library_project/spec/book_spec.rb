require_relative "../book.rb"

RSpec.describe Book do
    let(:book){
            Book.new(101,"Ruby","Matz")
    }

    describe "#available?" do
        it "Book availabiliy method" do
            expect(book.available?).to be(true)
        end
    end

    describe "#issue" do

            it "makes the book unavailable" do
                book.issue
                expect(book.available?).to be(false)
            end

            it "raises an error when the book is already issued" do
                    book.issue
                    expect{book.issue
                    }.to raise_error("The book is already issued")
            end
        
    end


    describe "#return_book" do
            it "return book method" do
                book.issue
                book.return_book
                expect(book.available?).to be(true)
            end


            it "raises an error when the book is already returned" do
                expect{book.return_book
            }.to raise_error("The Book is already available")
            end
    end

end