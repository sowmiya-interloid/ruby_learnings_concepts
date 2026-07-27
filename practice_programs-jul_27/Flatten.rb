arr=[[1,2],[2,3],[3,4]]


p arr.flatten.uniq



def nested(arr,res=[])
    i=0
    while(i<arr.length)
        if(arr[i].is_a?(Array))
            nested(arr[i],res)
        else
            res << arr[i]
        end
        i+=1
    end
    res
end

arr=[[1,2],[2,3],[3,4]]

p nested(arr)
res=nested(arr)

# Duplicates Remove

i=0


remove_duplicate=[]

while(i<res.length)

    j=0

    found=false

    while(j<remove_duplicate.length)

        if(res[i]==remove_duplicate[j])

            found=true
            break
        end
        j+=1
    end

    if(!found)
        remove_duplicate << res[i]
    end
        
    i+=1
end

p remove_duplicate












