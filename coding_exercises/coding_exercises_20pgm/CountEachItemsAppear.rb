# arr=[1,1,1,1,2,2,2,2,3,3,3,4,4,5,6,7,8,8,8,9]

arr=["sowmi","sowmi","sowmi","priya","meera","Keerthi","Keerthi"]

uniq_hash={}

count=1

arr.each do |ch|
    if(uniq_hash.include?(ch))
       count=count+1
       uniq_hash[ch]=count
    else
        count=1
        uniq_hash[ch]=count
    end
end

uniq_hash.each do |key,value|
    puts "#{key} : #{value}"
end

