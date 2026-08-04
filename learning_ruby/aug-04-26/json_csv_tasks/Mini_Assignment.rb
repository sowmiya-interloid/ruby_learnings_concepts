# Read Students.csv(name,mark1,mark2,mark3)
require "csv"

CSV.foreach("Students_details.csv", headers:true) do |row|

    puts "#{row["Name"]}  <<====>> Mark1 is #{row["Mark1"]} - Mark2 is #{row["Mark2"]} - Mark3 is #{row["Mark3"]} "

end


# Calcute each student's average
require "csv"

CSV.foreach("Students_details.csv", headers:true) do |row|

    sum = row["Mark1"].to_i + row["Mark2"].to_i + row["Mark3"].to_i

    avg=(sum/3.0).round(2)

    puts "The average mark of #{row["Name"]} is #{avg}"

end


# Covert the results into JSON
require "json"

CSV.foreach("Students_details.csv",headers:true) do |row|
    hash=row.to_h
    puts JSON.generate(hash)
end

# Display a summary on screen

count=0
max=0
min=Float::INFINITY
CSV.foreach("Students_details.csv",headers:true) do |row|
    count+=1

    
    # Average marks of each student
    sum = row["Mark1"].to_i + row["Mark2"].to_i + row["Mark3"].to_i

    avg=(sum/3.0).round(2)
    
    if(max<avg)
        max=avg
    end

    if(min>avg)
        min=avg
    end

    puts "The average mark of #{row["Name"]} is #{avg}"
    



end
# Total number of students
puts "Total Number of Students is #{count}"

# Highest average
puts "Highest average is #{max}"

# Lowest average
puts "Lowest average is #{min}"

# Saves the JSON output to report.json

require "json"

students=[]

CSV.foreach("Students_details.csv",headers:true) do |row|
    students << row.to_h
end

json_output=JSON.pretty_generate(students)

File.write("report.json",json_output)

puts "JSON saved successfully!!!!!!"