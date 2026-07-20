# 21. Password Validator

def validator_of_password(password)

    has_upper=false
    has_lower=false
    has_digit=false
    
    
    password_count=0

    str=password
    str.each_char do |ch|
        password_count+=1
    end
    

    str.each_char do |ch|
        if(('A'.. 'Z').include?(ch)) 
            has_upper = true   
        end   
        if(('a'.. 'z').include?(ch))   
            has_lower=true
        end
        if(('0'..'9').include?(ch))
            has_digit=true

        end
    end

    if(password_count>=8 && has_upper && has_lower && has_digit)
        
        return true

    else 
        return false
    end
end

password="Sowmi257"
if(validator_of_password(password))
    p "Valid Password!!!!!!"
else
    p "Incorrect Password"
end


# 22. Number Guess Analysis

def numberguess(secret,guesses)
    guesses.each do |num|
        if(num>secret)
            puts "Too High"
        elsif(num==secret)
            puts "Correct"
        elsif(num<secret)
            puts "Too Low"
        end
    end
end
secret=56
guesses=[34,60,54,56,90]

numberguess(secret,guesses)

# 23. Student Marks

def students_marks(ruby_students)
    passed_students={}
    failed_students={}
    ruby_students.each do |key,value|
        if(value<50)
            failed_students[key]=value
        elsif(value>=50)
            passed_students[key]=value
        end
    end
    
    highest_scorer=0
    highest_scorer_name=nil
    passed_students.each do |key,value|
        if(highest_scorer<value)
            highest_scorer=value
            highest_scorer_name=key
        end
    end
    return passed_students, failed_students,"Highest scorer: #{highest_scorer_name} (#{highest_scorer})"
    
end

ruby_students={
"Alice"=>87,
"Bob"=>42,
"Charlie"=>65,
"David"=>91,
"Eva"=>58
}
p students_marks(ruby_students)


# 24. Shopping Cart Total
def shopping_cart(cart)
    total_amount=0
    cart.each do |key,value|
        total_amount=total_amount+value
    end
    if(total_amount>500)
            discount=total_amount*10/100
            final_amount=total_amount-discount
    else 
            final_amount=total_amount
    end
    return final_amount
end

cart={
Rice:450,
Oil:180,
Soap:45,
Sugar:60
}

p shopping_cart(cart)


# 25. Employee Attendance

def employee_attendance(input)
    present=0
    absent=0
    leave=0
    input.each do |val|
    if("P"==val)
        present+=1
    elsif("A"==val)
        absent+=1
    elsif("L"==val)
        leave+=1
    end
    end

    return "Present: #{present} Absent:#{absent} Leave: #{leave}"
end
input=["P","P","A","P","L","P","P","A"]
p employee_attendance(input)