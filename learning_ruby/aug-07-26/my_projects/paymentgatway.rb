class PaymentGateway
    def pay(amount)
        "paid #{amount}"
    end
end

RSpec.describe PaymentGateway do
    it "payment should be happen" do
        gateway = PaymentGateway.new
        allow(gateway).to receive(:pay).and_return("Payment Successful")
        gateway.pay(700)
    end
end