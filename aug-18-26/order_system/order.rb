class Order
    def initialize(inventory, payment, email)
        @inventory = inventory
        @payment = payment
        @email = email
    end

    def place
        @inventory.check
        if @payment.charge(1000)
            @email.send_confirmation
        end

    end
end