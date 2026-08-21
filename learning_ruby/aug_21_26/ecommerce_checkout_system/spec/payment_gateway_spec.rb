require_relative "../payment_gateway.rb"

RSpec.describe PaymentGateway do
  let(:payment_gateway) {PaymentGateway.new}

  it "using the partial doubles returns true" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(true)
    result = payment_gateway.charge(1000)
    expect(result).to eq(true)
  end

    it "using the partial doubles returns false" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(false)
    result = payment_gateway.charge(1000)
    expect(result).to eq(false)
  end
end




