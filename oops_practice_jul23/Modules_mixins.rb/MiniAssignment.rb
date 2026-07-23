module Printable
    def print_me 
        dispaly
    end

end

module Exportable
    def export(format)
        if(format=="CSV")
            export_csv
        elsif(format=="JSON")
            export_json
        elsif(format=="text")
            export_text
        else
            "Invalid Format"
        end
    end
end

module Trackable

    def track(inform)
        @history||=[]

        @history << inform
    end

    def display_history
        @history
    end
    

end


class Student

    include Printable
    include Exportable
    include Trackable
    
    def initialize(name,id)
        @name=name
        @id=id
    end
    
    def dispaly
        "#{@name}  #{@id}"
    end
    
    def export_csv
        "#{@name} ,#{@id}"
    end

    def export_json
        "{name: #{@name} , id: #{@id}}"
    end

    def export_text
        "Name: #{@name} , Id: #{@id}"
    end

end

stu= Student.new("sowmi",567)

puts stu.print_me


puts stu.export("JSON")


stu.track("Printed")
stu.track("Exported format is JSON")


p stu.display_history


p "============================================================================================================="

class Invoice

    include Printable
    include Exportable
    include Trackable

    def initialize(invoiceno,name,amount)
        @invoiceno=invoiceno
        @name=name
        @amount=amount
    end

    def dispaly
        "#{@invoiceno}  #{@name} #{@amount}"
    end
    
    def export_csv
        "#{@invoiceno} ,#{@name}, #{@amount}"
    end

    def export_json
        "{invoiceno: #{@invoiceno} , name: #{@name} , amount: #{@amount}}"
    end

    def export_text
        "invoiceno: #{@invoiceno} , name: #{@name} , amount: #{@amount}"
    end
end

invoice=Invoice.new(2345,"Priya",34000)

p invoice.print_me

invoice.track("Printed_me")


p invoice.export("text")

invoice.track("Exported format is text")

p invoice.display_history