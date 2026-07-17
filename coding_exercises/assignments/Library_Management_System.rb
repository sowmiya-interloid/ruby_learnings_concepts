#Store the Books

books=[
    
{title:"java",author:"ganesh",status:"not issued", delivery_status:"delivered"},
{title:"python",author:"pavan",status:"not issued",delivery_status:"delivered"},
{title:"html",author:"bobby",status:"not issued",delivery_status:"delivered"}

]

loop do
    puts "Please choose one choice...!!!!!!!" 
    p "1. Search the Books"
    p "2. Issue a book"
    p "3. Return a book"
    p "4. Display all books"
    p "5. Exit"

    choice=gets.chomp.to_i
    p "===================================================================================================="

case choice 

#Search the Books
when 1
p "Search the particular Book"
title_u_want=gets.chomp.downcase
found=false
books.each do |book|
    
    if (book[:title]==title_u_want)
        p "The book is found!!!!!!!!!!!"
        p "The Book title is ==> #{book[:title]}"
        p "The Book author is ==> #{book[:author]}"
        p "The Book status is ==> #{book[:status]}"
        p "The Book delivery_status is ==> #{book[:delivery_status]}"

        found=true
    end

end
p "Sorry Book not available!!!!!!!" unless found 
p "===================================================================================================="

#Issue a book
when 2
p "Please Enter the Issue book name"
issue_bookname=gets.chomp.downcase
found=false
books.each do |book|
    if (book[:title]==issue_bookname)
        if(book[:status]!="issued")
            book[:status]="issued"
            p "Book Status should be changed has issued"
            p "The Book title is ==> #{book[:title]}"
            p "The Book author is ==> #{book[:author]}"
            p "The Book status is ==> #{book[:status]}"
            p "The Book delivery_status is ==> #{book[:delivery_status]}"
        else
            p "Book Status is already Issued!!!!!!!"
        end
        found=true
    end
end
p "Sorry Book not available!!!!!!!" unless found 
p "===================================================================================================="

#Return a book
when 3
p "Please Enter the Return book name"
return_bookname=gets.chomp.downcase
books.each do |book|
    if (book[:title]==return_bookname)
        
            book[:delivery_status]="returned"
            p "Book delivery_status should be changed as returned!!!!!"
            p "The Book title is ==> #{book[:title]}"
            p "The Book author is ==> #{book[:author]}"
            p "The Book status is ==> #{book[:status]}"
            p "The Book delivery_status is ==> #{book[:delivery_status]}"
    end
end
p "===================================================================================================="

#Display all books
when 4
p "The available books are:"
books.each do |book|
    
    p "#{book[:title]} : #{book[:delivery_status] }"
    
end
p "===================================================================================================="

when 5

    p "Thank you!!!!!!!!"
    break

end

end
