require_relative "../checkout_service.rb"
require_relative "../payment_gateway.rb"
require_relative "../email_service.rb"
require_relative "../product.rb"

RSpec.describe CheckoutService do

  let(:payment_gateway) {instance_double(PaymentGateway)}
  # let(:email_service) {instance_double(EmailService)}

  let(:email_service) {instance_spy(EmailService)}

  let(:checkout_service) {
    CheckoutService.new(payment_gateway, email_service)
    }
    
  let(:product) {
    Product.new("Laptop", 500, 10)
    }

  it "successful checkout" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(true)
    allow(email_service).to receive(:send_receipt).with("user@example.com",1000).and_return(true)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:success)
  end

  it "correct payment amount" do
    expect(payment_gateway).to receive(:charge).with(1000).and_return(true)
    allow(email_service).to receive(:send_receipt)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:success)
  end

  it "payment called exactly once" do
    expect(payment_gateway).to receive(:charge).with(1000).and_return(true).once
    allow(email_service).to receive(:send_receipt)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:success)
  end

  it "stock is reduced" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(true)
    allow(email_service).to receive(:send_receipt).with("user@example.com",1000).and_return(true)
    checkout_service.checkout(product,2,"user@example.com")

    expect(product.stock).to eq(8)
  end


  it "Email receipt called once" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(true)
    expect(email_service).to receive(:send_receipt).with("user@example.com",1000).and_return(true).once
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:success)
  end


  it "does not reduce stock and does not send email when payment fails" do
    expect(payment_gateway).to receive(:charge).with(1000).and_return(false)
    expect(email_service).not_to receive(:send_receipt)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:payment_failed)
    expect(product.stock).to eq(10)
  end


  it "product out of stock" do
    product = Product.new("Book",1000,0)
    expect(payment_gateway).not_to receive(:charge)
    expect(email_service).not_to receive(:send_receipt)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:out_of_stock)
  end

  it "successful checkout works in order" do
    expect(product).to receive(:available?).ordered.and_return(true)
    expect(payment_gateway).to receive(:charge).with(1000).ordered.and_return(true)
    expect(product).to receive(:reduce_stock).with(2).ordered.and_return(true)
    expect(email_service).to receive(:send_receipt).with("user@example.com",1000).ordered.and_return(true)
    result = checkout_service.checkout(product,2,"user@example.com")
    expect(result).to eq(:success)
  end

  it "sends receipt after successful checkout" do
    allow(payment_gateway).to receive(:charge).with(1000).and_return(true)
    checkout_service.checkout(product,2,"user@example.com")
    expect(email_service).to have_received(:send_receipt).with("user@example.com", 1000)
  end
end