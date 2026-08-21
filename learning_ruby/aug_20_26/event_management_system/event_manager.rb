require_relative "event"
require_relative "booking"
require_relative "persistable"

class EventManager
    include Persistable
    def initialize
        @events = load
        @bookings = load
        @next_event_id = 1
        @next_bookings_id = 1
    end
end