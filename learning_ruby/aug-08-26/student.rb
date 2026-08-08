class Student
    
    def initialize(name, mark)
        @mark = mark
        @name = name
    end

    def name
        @name
    end

    def mark
        @mark
    end

    def passed? 
        @mark >= 40
    end
end

