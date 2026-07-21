# 1. Tax Calculation

tax_calculation = Proc.new do |income|

    if income <= 25000
        tax = 0

    elsif income <= 50000
        tax = income * 5 / 100

    elsif income <= 100000
        tax = income * 20 / 100

    else
        tax = income * 30 / 100
    end

    tax

end

p tax_calculation.call(200000)
p tax_calculation.call(450000)
p tax_calculation.call(800000)
p tax_calculation.call(1500000)

p "============================================================================================"    

# Student Grade

student_grade = -> (mark) do

    if mark >= 90
        grade = "A"

    elsif mark >= 75
        grade = "B"

    elsif mark >= 50
        grade = "C"

    else
        grade = "Fail"
    end

    grade

end

p student_grade.call(95)
p student_grade.call(82)
p student_grade.call(67)
p student_grade.call(40)

p "============================================================================================"

# Salary Bonus

salary_bonus = Proc.new do |salary, rating|

    if rating == 5
        bonus = salary * 20 / 100

    elsif rating == 4
        bonus = salary * 15 / 100

    elsif rating == 3
        bonus = salary * 10 / 100

    else
        bonus = 0
    end

    bonus

end

p salary_bonus.call(50000, 5)
p salary_bonus.call(50000, 4)
p salary_bonus.call(50000, 3)
p salary_bonus.call(50000, 2)

p "============================================================================================"

# Discount Calculator

discount_calculator = -> (price, discount) do

    discount_amount = price * discount / 100

    final_price = price - discount_amount

    final_price

end

p discount_calculator.call(10000, 50)
p discount_calculator.call(2500, 20)
p discount_calculator.call(5000, 35)


























