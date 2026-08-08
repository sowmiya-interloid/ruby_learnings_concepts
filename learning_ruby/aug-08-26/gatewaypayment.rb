class GatewayPayment

    def pay(amount)
        amount
    end
end

# stub

RSpec.describe GatewayPayment do

    it "Payment check" do
        gateway_payment=GatewayPayment.new

        allow(gateway_payment).to receive(:pay).and_return("Amount is paid..")
    end

end

# mock

RSpec.describe "logger checking" do
    it "logger check" do
        user=double("User")
        expect(user).to receive(:info)
        user.info
    end
end


# spy

RSpec.describe "Spy example try" do
    it "check info was called" do
        user=spy("User")
        user.info("Guru")
        expect(user).to have_received(:info).with("Guru")
    end
end

