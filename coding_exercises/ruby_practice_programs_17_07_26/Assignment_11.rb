#  11. Group Words by Length

input=["cat","dog","rat","elephant","lion"]

hash={}

input.each do |word|
    
    str=word
    count=0
    len=str.length-1
    while(len>=0)
        count=count+1
        len-=1
    end
    
    if(hash.include?(count))
        hash[count] << str
    else
        hash[count]=[str]
    end
end
p hash


