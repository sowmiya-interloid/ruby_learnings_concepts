class CalculateMark
    def initialize(mark)
        @mark = mark 
    end 

    def mark
        raise StandardError,"Invalid mark" if @mark <= 0
        @mark >= 40
    end
end