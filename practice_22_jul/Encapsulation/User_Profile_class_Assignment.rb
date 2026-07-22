class User_Profile

    attr_reader :username
    attr_writer :password
    attr_accessor :email

    def initialize(username,password,email)
        @username=username
        @password=password
        @email=email
    end

    def summary
        "The username is #{@username} email is #{@email}"
    end


    def checkvalidate_email
        validate_email
    end


    private
    def validate_email 
        if(@email.include?("@")) 
            puts "valid email for #{@username}" 
        else 
            puts "Invalid email for #{@username}" 
        end 
    end


end

#  1st user=================================================================
profile1 = User_Profile.new("Sowmiya","sowmiya123","sowmiya@gmail.com")

p profile1.summary

profile1.checkvalidate_email

puts profile1.username

# puts profile1.email="sudha"

# profile1.checkvalidate_email


profile1.password="ruby123"

p profile1.summary

# p profile1.password

p profile1.email

p profile1.email="sowmi@123"

p profile1.summary

p "===================================================================================="

#  2nd user=================================================================


profile2 = User_Profile.new("Meera","meera123","meeranila@gmail.com")

p profile2.summary

profile2.checkvalidate_email

puts profile2.username

# puts profile2.email="sudha"

# profile2.checkvalidate_email


profile2.password="ruby123"

p profile2.summary

# p profile2.password

p profile2.email

p profile2.email="nila@123"

p profile2.summary