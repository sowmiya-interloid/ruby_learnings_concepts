require 'json'

person={

    name:"Sowmiya",
    city:"CBE"
}

puts person.class

json_data=person.to_json

puts json_data.class