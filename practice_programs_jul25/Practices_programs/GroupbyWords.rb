str=["apple","ant","cat","cap","ball","book","eat"]

i=0

hash={}


while(i<str.length)
    word=str[i]

    first_letter=word[0]

    if(hash[first_letter]==nil)
        hash[first_letter]=[]
    end

    hash[first_letter] << word

    i+=1
end

p hash
