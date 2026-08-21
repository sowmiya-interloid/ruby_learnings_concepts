class InvalidBookingError < StandardError
end

class Booking
    attr_reader :id, :event_id, :customer_name, :number_of_tickets, :total_price
    def initialize(
        id:,
        event_id:,
        customer_name:,
        number_of_tickets:,
        total_price:)
        
        @id = id
        @event_id = event_id
        @customer_name = customer_name
        @number_of_tickets = number_of_tickets
        @total_price = total_price
        validate!
    end

    def validate!
        raise InvalidBookingError,"customer name cannot be empty" if customer_name.to_s.strip.empty?
        raise InvalidBookingError,"ticket count must be greater than 0" if number_of_tickets <= 0
        raise InvalidBookingError,"total price cannot be negative" if total_price < 0
    end

end