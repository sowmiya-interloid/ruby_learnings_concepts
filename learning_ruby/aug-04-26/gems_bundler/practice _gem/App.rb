require "pry"
require "httparty"


puts "Hello"

binding.pry

response=HTTParty.get("https://api.github.com")

puts response.code