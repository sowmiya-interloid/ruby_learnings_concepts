class BankAccount

    attr_reader :balance

    def initialize(balance)
        @balance = balance
    end
    
    def deposit(amount)
        @balance+=amount
    end

    def withdraw(amount)
        if @balance < amount
            raise StandardError, "Insufficient Amount"
        end
            @balance-=amount
        
    end

end