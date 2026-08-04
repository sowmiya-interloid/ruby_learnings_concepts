require "csv"
require "json"

students=[]

CSV.foreach("students.csv",headers:true) do |row|
    students << row.to_h
end


p students

json_output=JSON.pretty_generate(students)

puts json_output

File.write("students.json",json_output)

p "==================================================="

text=File.read("students.json")

student=JSON.parse(text)

student.each do |s|
    puts s["Name"]
    puts s["Age"]
    puts s["City"]
    puts "=================="
end

p "==================================================="
require "httparty"

json_data=File.read("students.json")

response = HTTParty.post(
    "https://jsonplaceholder.typicode.com/posts",
    body: json_data,
    headers: {
        "Content-Type" => "application/json"
    }
)

puts response.body


#bundle exec rubocop