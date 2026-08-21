require 'json'

module Persistable
    def save
        data = events.map do |event|
            {
            id: event.id,
            name: event.name,
            category: event.category,
            date: event.date,
            total_seats: event.total_seats,
            ticket_price: event.ticket_price
        }
        end
        File.write("events.json",JSON.pretty_generate(data))
    end 


    def load
        return [] unless File.exist?("events.json")

        JSON.parse(File.read("events.json")).map do |record|
            Events.new
            {id: record["id"],
            name: record["name"],
            category: record["category"],
            date: record["date"],
            total_seats: record["total_seats"],
            ticket_price: record["ticket_price"]
        }
        end



    end
end
