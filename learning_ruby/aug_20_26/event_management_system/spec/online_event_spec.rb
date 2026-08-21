require_relative "../event.rb"
require_relative "../online_event.rb"


RSpec.describe OnlineEvent do

    let(:event) {
        Event.new(
            id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200)
        }

    let(:online_event) {

        OnlineEvent.new(
            id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:200,
            meeting_url: "https://google.com"
        )
    }

    it "test_online_event_is_an_event" do
        expect(online_event).to be_a(Event)
    end

    it "test_meeting_url_is_stored" do
        expect(online_event.meeting_url).to eq("https://google.com")
    end

    it "test_online_event_to_s" do
        expect(online_event.to_s).to include("https://google.com")
    end

    it "test_online_event_uses_parent_attributes" do
        expect(online_event.to_s).to include("Enjoy")
    end


    it "test_online_event_with_invalid_price_raises_error" do

        expect{
            OnlineEvent.new(id: 1,
            name: "Movie",
            category: "Enjoy",
            date: "2026-08-20",
            total_seats: 100,
            ticket_price:-200,
            meeting_url: "https://google.com")
        }.to raise_error(InvalidEventError,"ticket_price cannot be negative")
    end


end