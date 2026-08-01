File.open("todo.txt","r") do |source|
    File.open("copy1_file.txt","w") do |destination|
        destination.write(source.read)
    end
end

p "File Copied Successfully"