p "Please Enter the Word"
word=gets.chomp.downcase

count=0

word.each_char do |ch|
    if(['a','e','i','o','u'].include?(ch))
        count=count+1
    end
end


p count


