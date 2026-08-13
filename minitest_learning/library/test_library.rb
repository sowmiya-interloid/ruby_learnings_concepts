require 'minitest/autorun'
require_relative 'library'

describe Library do
    before do
        @library = Library.new
    end

    it "New Library" do
        assert_empty @library.books
    end

    it "add book" do
        assert_equal ["Ruby"], @library.add_book("Ruby")
    end

    it "add multiple book" do
        @library.add_book("Ruby")
        @library.add_book("Java")
        @library.add_book("Python")
        @library.add_book("Rails")
        assert_equal ["Ruby","Java","Python","Rails"], @library.books
    end

    it "has_book true" do 
        @library.add_book("Ruby")
        @library.add_book("Java")
        assert @library.has_book?("Java")
    end

    it "has_book false" do 
        @library.add_book("Ruby")
        @library.add_book("Java")
        refute @library.has_book?("Python")
    end

    it "remove book" do
        @library.add_book("Ruby")
        @library.add_book("Java")
        @library.add_book("Python")

        @library.remove_book("Python")
        assert_equal ["Ruby","Java"], @library.books
    end

end