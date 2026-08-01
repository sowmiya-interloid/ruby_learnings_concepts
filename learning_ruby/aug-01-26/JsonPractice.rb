require 'json'

student ={

name:"Arun",
age:23,
city:"coimbatore"
}

p " Coverting hash into JSON we have to use ------------>>> generate"

json_data=JSON.generate(student)

puts json_data

p "======================================================="

p " Coverting JSON into hash we have to use ------------>>> parse"

hash=JSON.parse(json_data)

puts hash["name"]

p "======================================================="

file=File.open("student.txt","r")

puts file.read

file.close

p "======================================================="

file = File.read("student.json")

puts file

p "======================================================="

require "json"

text=File.read("studentdata.json")

student=JSON.parse(text)


puts student["name"]
puts student["marks"].sum

p "======================================================="

require "json"

student={
    name:"Sam",
    marks:[78,90,78]
}

File.write("out.json",JSON.pretty_generate(student))

p "======================================================="

require "json"

student={
    name:"Sam",
    marks:[78,90,78]
}

File.write("out1.json",JSON.generate(student))