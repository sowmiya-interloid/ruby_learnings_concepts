require_relative "../booking.rb"

RSpec.describe Booking do

    let(:booking) {
        Booking.new(
            id: 1,
            event_id: 101,
            customer_name: "Sowmiya",
            number_of_tickets: 4,
            total_price: 1000)
    }
    
    it "test_valid_booking" do
        expect(booking).to be_a(Booking)
    end

    it "test_customer_name" do
        expect(booking.customer_name).to eq("Sowmiya")
    end

    it "test_event_id" do
        expect(booking.event_id).to eq(101)
    end

    it "test_ticket_count" do
        expect(booking.number_of_tickets).to eq(4)
    end

    it "test_total_price" do
        expect(booking.total_price).to eql(1000)
    end

    it "test_empty_customer_name_raises_error" do
        expect{
            Booking.new(
            id: 1,
            event_id: 101,
            customer_name: " ",
            number_of_tickets: 4,
            total_price: 1000)
        }.to raise_error(InvalidBookingError,"customer name cannot be empty")
    end

    it "test_zero_tickets_raises_error" do
        expect{
            Booking.new(
            id: 1,
            event_id: 101,
            customer_name: "Sowmiya",
            number_of_tickets: 0,
            total_price: 1000)
        }.to raise_error(InvalidBookingError,"ticket count must be greater than 0")
    end

    it "test_negative_tickets_raises_error" do
        expect{
            Booking.new(
            id: 1,
            event_id: 101,
            customer_name: "Sowmiya",
            number_of_tickets: -10,
            total_price: 1000)
        }.to raise_error(InvalidBookingError,"ticket count must be greater than 0")
    end

    it "test_negative_price_raises_error" do
        expect{
            Booking.new(
            id: 1,
            event_id: 101,
            customer_name: "Sowmiya",
            number_of_tickets: 10,
            total_price: -1000)
        }.to raise_error(InvalidBookingError,"total price cannot be negative")
    end
    
    

end