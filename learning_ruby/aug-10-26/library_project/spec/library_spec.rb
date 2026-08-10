require_relative "../member.rb"
require_relative "../book.rb"
require_relative "../library.rb"
require_relative "../storage.rb"


RSpec.describe Library do

    let(:library){
        Library.new
    }

    let(:book){
        Book.new(101,"Ruby","Matz")
    }

    let(:member){
        Member.new(1,"Priya")
    }

    describe "#add_book" do
        it "add books to the books array" do
            library.add_book(book)
            expect(library.books).to include(book)
        end
    end

    describe "#add_member" do
        it "add member to the members array" do
            library.add_member(member)
            expect(library.members).to include(member)
        end
    end

    describe "#find_book" do
        it "find book from the array" do
            library.add_book(book)
            expect(library.find_book(101)).to eq(book)
            
        end
    end 


    describe "#find_member" do
        it "find member from the array" do
            library.add_member(member)
            expect(library.find_member(1)).to eq(member)
            
        end
    end

    describe "#issue_book" do
        it "issue the book to the member" do
            library.add_book(book)
            library.add_member(member)

            library.issue_book(101, 1)

            expect(book.available?).to eq(false)
            expect(member.borrowed_books).to include(book)
        end

        it "raise an error whether the book is not found" do
            library.add_book(book)

            expect{library.issue_book(999,1)}.to raise_error("Book not found")
        end

        it "raise an error whether the member is not found" do
            library.add_book(book)

            expect{library.issue_book(101,4)}.to raise_error("Member not found")
        end
    end


    describe "#return_book" do
        it "return the book frrom the member" do 
            library.add_book(book)
            library.add_member(member)
            library.issue_book(101, 1)

            library.return_book(101,1)
            expect(member.borrowed_books).not_to include(book)
            expect(book.available?).to eq(true)
        end

        it "raise an error whether the book is not found" do
            library.add_book(book)

            expect{library.return_book(999,1)}.to raise_error("Book not found")
        end

        it "raise an error whether the member is not found" do
            library.add_book(book)

            expect{library.return_book(101,4)}.to raise_error("Member not found")
        end

    end

    describe "#show_books" do
            it "Show the status of the book" do
                library.add_book(book)
                expect{library.show_books}.to output("101-Ruby-Matz-Available\n").to_stdout
            end
    end


    describe "show_members" do
        it "Show the status of the member" do
            library.add_member(member)
            expect{library.show_members}.to output("1 - Priya\n").to_stdout
        end
    end
end

