count=0

begin

    count+=1
    puts "This try #{count}"
    puts 10/0

rescue => e
    retry if(count<5)
    puts "After 5 try pgmm got error"
end

p "================================================================="