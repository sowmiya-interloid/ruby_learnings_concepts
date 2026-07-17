word=gets.chomp.downcase

rev_word=word.reverse

if(word==rev_word)
    p "Palindrome"
else
    p "Not a Palindrome"
end


#======WITHOUT USING reverse METHOD

word=gets.chomp.downcase

rev_word=""

count=word.length-1
while(count>=0)
    rev_word=rev_word+word[count]
    count-=1
end

p rev_word
if(word==rev_word)
    p "Palindrome"
else
    p "Not a Palindrome"
end




