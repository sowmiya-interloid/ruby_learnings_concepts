products={

phone:25000,
laptop:40000,
waterbottle:400,
bag:1000,
chair:2000


}
#VIEW

p products.keys
p products.values

products.each do |key,value|
    p "#{key} : #{value}"
end
p "================================================================================"

#ADDING

products[:table]=10000
products.each do |key,value|
    p "#{key} : #{value}"
end
p "================================================================================"

#UPDATE
products[:phone]=13000
products.each do |key,value|
    p "#{key} : #{value}"
end
p "================================================================================"

#DELETE

products.delete(:table)

p "================================================================================"

#Read

p products[:phone]

p products.fetch(:laptop)
p products.fetch(:pen,0)

