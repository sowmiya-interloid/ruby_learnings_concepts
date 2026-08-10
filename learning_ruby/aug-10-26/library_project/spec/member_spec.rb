require_relative "../book.rb"

require_relative "../member.rb"


RSpec.describe Member do

    let(:book){
        Book.new(101,"Java","James")
    }

    let(:member){
        Member.new(1,"Kaviya")
    }

    describe "#borrow_book" do
            it "borrowed book is added" do
                member.borrow_book(book)
                expect(member.borrowed_books).to include(book)
            end
    end

    describe "#return_book" do
            it "returned Book is removed" do
                member.borrow_book(book)
                member.return_book(book)
                expect(member.borrowed_books).not_to include(book)
            end

            it "raises an error when the book is not borrowed" do
                expect{member.return_book(book)}.to raise_error("Book is not borrowed by this member")
            end
    end

end

