File.open("names.txt") do |file|
    file.each_line do |line|
        name=line.chomp
        
        if(name.start_with?("A"))
            puts name
        end
    end
end