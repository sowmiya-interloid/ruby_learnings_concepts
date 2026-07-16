emp={
    name:"Priya",
    age:22,
    department:"Developer",
    salary:20000,
    email:"priya@gmail.com"
}


# Display the emp details

emp.each do |key,value|
    p "#{key} : #{value}"
end

# update the department

emp[:department]="Salesforce Developer"

p emp[:department]

#Delete the salary

emp.delete(:salary)

p emp.fetch(:salary,0)