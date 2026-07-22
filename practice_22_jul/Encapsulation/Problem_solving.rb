# Mobile Phone Battery

class MobileBattery

    attr_reader :battery

    def initialize(battery)
        @battery=battery
    end

    def charge(percent)
        
        @battery=@battery+percent

        if(@battery>100)
            @battery=100
        end


        @battery
            
        
    end

    def use(minutes)
        
        @battery=@battery-minutes

        if(@battery<0)
            @battery=0
        end

        @battery   
        
    end

end


mobile=MobileBattery.new(50)


p mobile.battery

p mobile.charge(20)

p mobile.charge(40)

p mobile.use(50)
p mobile.use(80)

p "=============================================================="


# MOvie Ticket Booking


class MovieTicketBooking

    attr_reader :seats

    def initialize(seats)
        @seats=seats
        @total_seats=seats
    end

    def book(count)
        if(count<=@seats)
            @seats=@seats-count
        else
            "Sorry !!!!!!! seats are not available"
        end
    end


    def cancel(count)
            @seats=@seats+count

            if(@seats>@total_seats)
                @seats=@total_seats
            end
        
    end


end

movie=MovieTicketBooking.new(100)

p movie.seats

p movie.book(101)

p movie.seats

p movie.book(10)

p movie.cancel(5)
            

        











