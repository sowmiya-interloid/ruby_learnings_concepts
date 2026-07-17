names=["Anu","Arun","Priya","Priyanka","Sita","Ram","Sowmiya"]

letter=gets.chomp.downcase

names.each do|name|
    if(name[0].downcase==letter)
        p name
    
    end
end