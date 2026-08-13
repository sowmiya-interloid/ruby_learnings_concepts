class User
    def initialize(name, email)
        @name = name
        @email = email
    end

    def valid?
        !@name.nil? && !@name.empty? && !@email.nil? && !@email.empty?
    end
end
