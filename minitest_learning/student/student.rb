class Students
    def initialize(name:,mark:)
        @mark=mark
        @name=name
    end 

    def validate_the_mark
        if(@mark>=40)
            true
        else
            false
        end
    end

end