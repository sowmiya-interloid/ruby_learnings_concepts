file=File.open("Sample.txt")

puts file.read

file.close

p "=================================================="

file = File.open("sample1.txt", "w")

file.close


p "File created....."

p "=================================================="

file=File.open("smaple1.txt","w")
file.write("Hello Ruby")
file.close

file=File.open("smaple1.txt","w")
file.write("RailsOnFire")
file.close

file=File.open("smaple1.txt","a")
file.write(" Ruby...")
file.close

p "File Inside Content added..."

p "=================================================="

