class Stack

    def initialize

        @arr=[]
        @index=-1
    end


    def push(element)

        @index=@index+1
        @arr[@index]=element
    end


    def pop

        if(@index==-1)
            "Arr is empty"
        else
            value=@arr[@index]
            @arr[@index]=nil
            @index=@index-1
            "The Removed value is #{value}"
        end

        
    end


    def peek

        if(@index==-1)
            "Arr is empty"
        else
            @arr[@index]
        end
    end

    def display
        if(@index==-1)
            "Arr is empty"
        else
            i=0
            while(i<=@index)
                p @arr[i]
                i=i+1
            end

            p "Display Completed"
        end
    end

end

stack=Stack.new
stack.push(10)
stack.push(20)
stack.push(30)
stack.push(40)
stack.push(50)
stack.push(60)

stack.display

p stack.peek


        