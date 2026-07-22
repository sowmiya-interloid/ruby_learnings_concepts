class PasswordManager

    def initialize(password)
        @password=password
    end


    def accessprivatemethod(user_password)
        password_check(user_password)
    end



    private

    def password_check(user_password)

        if(user_password == @password)
            "Valid User"
        else
            "Invalid User!!!!!!!!"
        end
    end
end

password=PasswordManager.new("ruby@123")

p password.accessprivatemethod("ruby@123")

p password.accessprivatemethod("sowmi@123")