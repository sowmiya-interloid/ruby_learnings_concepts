require_relative '../event.rb'

RSpec.describe Event do
    let(:event) {Event.new(
            id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200)}

    it "test valid event is created" do
        expect(event.id).to eq(1)
        expect(event.name).to eq("Movie")
        expect(event.category).to eq("Enjoy")
        expect(event.date).to eq("2026-08-20")
        expect(event.total_seats).to eq(100)
        expect(event.ticket_price).to eq(200)
    end

    it "test valid event is created - using have_attributes" do
        expect(event).to have_attributes(id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200)
    end

    it "test valid event is created - the main way" do
        expect(event).to be_a(Event)
    end

    it "test_event_has_correct_name" do
        expect(event.name).to eq("Movie")
    end

    it "test_event_has_correct_price" do
        expect(event.ticket_price).to eq(200)
    end

    it "test_event_has_correct_seats" do
        expect(event.total_seats).to eq(100)
    end


    it "test_empty_name_raises_error" do
        expect{
            Event.new(
            id: 1,
            name: "",
            category: "Entertainment",
            date: "2026-09-10",
            total_seats: 100,
            ticket_price: 1500
    )
    }.to raise_error(InvalidEventError,"name cannot be empty")
    end

    it "test_zero_seats_raises_error" do
        expect{
            Event.new(
            id: 1,
            name: "Movie",
            category: "Entertainment",
            date: "2026-09-10",
            total_seats: 0,
            ticket_price: 1500
    )
    }.to raise_error(InvalidEventError,"total_seats must be greater than 0")
    end

    it "test_negative_seats_raises_error" do
        expect{
            Event.new(
            id: 1,
            name: "Movie",
            category: "Entertainment",
            date: "2026-09-10",
            total_seats: -90,
            ticket_price: 1500
    )
    }.to raise_error(InvalidEventError,"total_seats must be greater than 0")
    end

    it "test_negative_ticket_price_raises_error" do
        expect{
            Event.new(
            id: 1,
            name: "Movie",
            category: "Entertainment",
            date: "2026-09-10",
            total_seats: 90,
            ticket_price: -1500
    )
    }.to raise_error(InvalidEventError,"ticket_price cannot be negative")
    end

    it "test_to_s_contains_event_name" do
        expect(event.to_s).to include("Movie")
    end

    it "test_events_are_sorted_by_date" do
        event1= Event.new(id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200)
        event2= Event.new(id: 2,
            name: "Park",
            category: "Outing",
            date: "2026-08-10",
            total_seats: 100,
            ticket_price:200)

        expect(event1 <=> event2).to eq(1)
    end

    it "test_events_are_sorted_by_date" do
        event1= Event.new(id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200)
        event2= Event.new(id: 2,
            name: "Park",
            category: "Outing",
            date: "2026-08-10",
            total_seats: 100,
            ticket_price:200)

        expect([event1,event2].sort).to eq([event2,event1])
    end
end