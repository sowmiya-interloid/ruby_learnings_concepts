describe "Payment service" do

    it "fake payment Service" do
        
        payment_service = double("PaymentService")

        allow(payment_service).to receive(:charge).and_return(true)
        expect(payment_service.charge(1000)).to eq(true)

        
    
    end

    it "using with" do
        payment_service = double("PaymentService")
        allow(payment_service).to receive(:charge).with(1000).and_return(true)

    end





end