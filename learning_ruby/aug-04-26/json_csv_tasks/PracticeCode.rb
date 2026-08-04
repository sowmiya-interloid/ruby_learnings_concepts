#1========================================

require "json"
file=File.read("students.json")

data=JSON.parse(file)


puts data

puts data["name"]

puts data["age"]

puts data["course"]

puts data["city"]

p "=========================================================================================="

#2========================================

require "csv"

CSV.foreach("students.csv",headers:true) do |value|

    hash=value.to_h

    p hash

end

p "=========================================================================================="
#3========================================

require "csv"



students = [
    { "Name" => "Abi",   "Age" => 21, "City" => "CBE" },
    { "Name" => "Arun",  "Age" => 22, "City" => "Chennai" },
    { "Name" => "Kumar", "Age" => 20, "City" => "Madurai" }
]


CSV.open("students1.csv","w") do |csv|
    csv << students.first.keys

    students.each do |student|
        csv << student.values
    end

end

puts "CSV file created successfully!!!!"


p "=========================================================================================="

#4========================================

require "csv"

count = 0

CSV.foreach("students.csv", headers: true) do |row|
    count += 1
end

puts "Total rows: #{count}"

