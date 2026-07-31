# 1. Write a program that handles ZeroDivisionError.

begin

    num=10/0

rescue ZeroDivisionError => e

    puts e.class
    puts e.message

end

p "======================================================================================"

# 2. Print the error message using

# rescue => e


begin

    5.upcase

rescue => e

    puts e.class
    puts e.message

end

p "======================================================================================"

# 3. Print the exception class. 
# Example ZeroDivisionError


begin

    p hii

rescue => e

    puts e.class

end

p "======================================================================================"

# 4. Read a file,If the file doesn't exist, print File not found using

# rescue Errno::ENOENT

begin

    data=File.read("notes.txt")

rescue Errno::ENOENT
    
    puts "File not found!"

end

p "======================================================================================"

# 5. Use else to print

# Operation completed successfully.

# only if no error occurs.

begin
    num=12/6
    p num
rescue StandardError => e
    p e.message
else
    p "Operation Completed Successfully!!!!!"
end

p "======================================================================================"

# 6. Use ensure to print

# Closing file...

# whether an error occurs or not.

begin
    file=File.open("data.txt","r")
    p file.read
rescue StandardError => e
    p e.message
    p e.class
ensure
    file.close if file

    p "File Closed!!!!!"
end

p "======================================================================================"

# 7. Raise your own exception if age is less than 18.

# Example

# raise "Age must be 18 or above"

age=12

# raise "Age must be 18 or above" if(age<18)    #it throw RuntimeError

#===================================

begin
    age=12

    raise "Age must be 18 or above" if(age<18)

    puts "Eligible"

rescue RuntimeError => e
    
    puts e.message
    puts e.class
end

p "======================================================================================"

# 8. Handle two exceptions.

# ZeroDivisionError
# ArgumentError

begin
    num=20

    result=100/num

    p num

    # ZeroDivisionError

    # num1=0

    # res=100/num1

    # p res

    #NameError
    # num1=0

    # res=100/num2

    # p res

    # ArgumentError
    # def add(num)

    #     p num

    # end

    # add

rescue ZeroDivisionError => e
    
    p "I'm ZeroDivisionError"
    
    puts e.class
    puts e.message

rescue ArgumentError => e

    p "I'm ArgumentError"

    puts e.class
    puts e.message

rescue StandardError => e
    p "I'm StandardError"
    puts e.class
    puts e.message

end

p "======================================================================================"


# 9. Simulate a server connection.

# If connection fails, retry 3 times, then stop.

i=0
begin
    i+=1

    puts "Try #{i}"
    
    raise "Connection Failed" if(i<3)

    p "connection_passed"

rescue StandardError => e

    p e.message
    retry
end

p "======================================================================================"

# 10. Write a program that asks the user for a number. If the input is invalid, handle the exception and ask again.

begin
    print "Enter a number: "
    number = Integer(gets.chomp)

    puts "You entered: #{number}"

rescue ArgumentError
    puts "Invalid input! Try again."
    retry
end