require_relative '../order.rb'

RSpec.describe Order do

    it "inventory is checked" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")


        expect(inventory).to receive(:check)
        allow(payment).to receive(:charge).and_return(true)
        allow(email).to receive(:send_confirmation)

        order = Order.new(inventory, payment, email)
        order.place
    end

    it "payment is charged with the correct amount" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")

        allow(inventory).to receive(:check)
        expect(payment).to receive(:charge).with(1000).and_return(true)
        allow(email).to receive(:send_confirmation)
        order = Order.new(inventory, payment, email)
        order.place
    end

    it "email is sent after successful payment" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")

        allow(inventory).to receive(:check)
        expect(payment).to receive(:charge).with(1000).and_return(true).ordered
        expect(email).to receive(:send_confirmation).ordered
        order = Order.new(inventory, payment, email)
        order.place
    end

    it "the methods happen in the correct order" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")

        expect(inventory).to receive(:check).ordered
        expect(payment).to receive(:charge).with(1000).and_return(true).ordered
        expect(email).to receive(:send_confirmation).ordered
        order = Order.new(inventory, payment, email)
        order.place
    end

    it "If payment fails, email should not be sent" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")

        expect(inventory).to receive(:check)
        expect(payment).to receive(:charge).with(1000).and_return(false)
        expect(email).not_to receive(:send_confirmation)
        order = Order.new(inventory, payment, email)
        order.place
    end


    it "Payment service is called exactly once" do
        inventory = double("Inventory")
        payment = double("Payment")
        email = double("Email")

        expect(inventory).to receive(:check)
        expect(payment).to receive(:charge).with(1000).and_return(true).once
        expect(email).to receive(:send_confirmation)
        order = Order.new(inventory, payment, email)
        order.place
    end





end