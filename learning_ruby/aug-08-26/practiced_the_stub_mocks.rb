# and_return

RSpec.describe "creating the and_return" do 
    it "Return the value" do
        user=double("User")
        expect(user).to receive(:username).and_return("Sowmiya")

        user.username
    end
end

#and_raise

RSpec.describe "creating the and_raise" do
    it "Raise the error" do
        gateway=double("PaymentGateway")
        expect(gateway).to receive(:pay).and_raise(StandardError)

        expect {gateway.pay}.to raise_error(StandardError)
    end
end

# and_call_original

class Calculator
    def add(a,b)
        a+b
    end
end


RSpec.describe Calculator do
    it "Call the original method" do

        calc=Calculator.new

        allow(calc).to receive(:add).and_call_original

        p calc.add(10,20)
    end
end

# and_wrap_original

RSpec.describe Calculator do
    it "wrap_original" do

        calc=Calculator.new

        allow(calc).to receive(:add).and_wrap_original do |original, *args|

             original.call(*args) * 10
        end

        p calc.add(3,4)
    end
end

# receive_messages
# Multiple methods at once stub

RSpec.describe "Receive message Example" do
    it "create the receive_message" do 

        user=double("User")
        
        allow(user).to receive_messages(
            name:"Sowmiya",
            city:"Coimbatore"
        )

        user.name
        user.city

    end
end

# receive_message_chain


class Profile
    def name
        "Sowmiya"
    end
end

class User
    def profile
        Profile.new
    end
end

user = User.new

puts user.profile.name

RSpec.describe "receive_message_chain" do
    it "create the receive_message_chain" do 

        user=User.new
        
        allow(user).to receive_message_chain(:profile,:name).and_return("Abii")

        p user.profile.name

    end
end