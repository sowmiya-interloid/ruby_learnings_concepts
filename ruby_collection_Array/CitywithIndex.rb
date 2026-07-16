cities=["Chennai","Gobi","Coimbatore","Erode","Tiruppur","Salem"]

cities.each_with_index do |city,index|
    p " #{index}     #{cities[index]}"
end