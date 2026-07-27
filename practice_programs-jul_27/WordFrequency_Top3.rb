p "============================================="
# Word Frequency

sentence="The cat chased the cat cat"

down_case=sentence.downcase

sentence_new=down_case.split(" ")

p sentence_new

length_hash = sentence_new.each_with_object({}) do |word,hash|
    if(hash[word])
        hash[word]+=1
    else
        hash[word]=1
    end

end

p length_hash

p "============================================="

# split  and downcase


str="I love ruby i love java"

words=[]
word=""

i=0
while(i<str.length)

    ch=str[i]


    if(ch>="A" && ch<="Z")

        ch=(ch.ord + 32).chr

    end

    if(ch!=" ")
        word=word+ch
    else

        if(word!="")
        words << word
        word=""
        end
    end
    i+=1
end

words << word if(word!="")

p words


res=words.each_with_object({}) do |word,hash|
    if(hash[word])
        hash[word]+=1
    else
        hash[word]=1
    end
end

p res

p "============================================="


# Top 3 Scorers

students = [{ name: "Ram",   score: 85 },
    { name: "John",  score: 45 },
    { name: "Abi",   score: 92 },
    { name: "Kavi",  score: 68 },
    { name: "Priya", score: 78 },
    { name: "Raja",  score: 95 }]

res=students.sort_by {|stu| -stu[:score]}.first(3).each {|val| puts val[:name]}

# p res


# res.each do |val|
#     puts val[:name]
# end



students = [{ name: "Ram",   score: 85 },
    { name: "John",  score: 45 },
    { name: "Abi",   score: 92 },
    { name: "Kavi",  score: 68 },
    { name: "Priya", score: 78 },
    { name: "Raja",  score: 95 }]


i=0

n=students.length

while(i < n-1)

    j=0

    while(j < n-i-1)

        if(students[j][:score] < students[j+1][:score])
            temp=students[j]
            students[j]=students[j+1]
            students[j+1]=temp
        end

        j+=1
    end
    i+=1
end
p students



i=0

while(i<3)
    puts students[i][:name]

    i+=1
end












