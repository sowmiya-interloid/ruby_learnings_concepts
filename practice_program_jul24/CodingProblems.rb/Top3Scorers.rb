students = [
    { name: "Alice", score: 85 },
    { name: "Bob", score: 92 },
    { name: "Charlie", score: 78 },
    { name: "David", score: 95 },
    { name: "Eva", score: 88 }
]

n=students.length

i=0

while(i<n-1)

    j=0

    while(j<n-i-1)

        if(students[j][:score]<students[j+1][:score])
            temp=students[j]
            students[j]=students[j+1]
            students[j+1]=temp
        end

        j+=1
    end
    i+=1
end

i=0
while(i<3)
    p students[i]
    i+=1
end


# using Inbuilt methods

top_three = students.sort { |a, b| b[:score] <=> a[:score] }.first(3)

p top_three