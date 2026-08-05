require 'debug'

def add(num1, num2)
  num1+num2
end

num1=10
num2=30
binding.break

p add(num1, num2)
