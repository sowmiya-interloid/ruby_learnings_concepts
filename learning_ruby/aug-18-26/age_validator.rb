class AgeValidator
    def valid?(age)
        age >= 18 && age <= 60
    end
end