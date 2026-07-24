str = "apple banana apple mango banana apple"

i=0
hash={}
word=""
while(i<str.length)

    if(str[i]!=" ")
        word=word+str[i]
    else

        if(hash[word]==nil)
            hash[word]=1
        else
            hash[word]+=1
        end
        word=""
    end
    i=i+1
    
end

if(hash[word]==nil)
    hash[word]=1
else
    hash[word]+=1
end



p hash


