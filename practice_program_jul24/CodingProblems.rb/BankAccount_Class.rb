class BankAccount
    
    attr_accessor :balance
    attr_accessor :history_details

    def initialize(balance)
        @balance=balance
    end

    def deposit(amount)
        @balance=@balance+amount
    end


    def withdraw(amount)
        if(amount<@balance)
            @balance=@balance-amount
        else
            "Sorry Invalid amount!!!!"
        end

    end

    def history(information)

        @history_details||=[]

        @history_details << information

    end
end

bank1=BankAccount.new(1000)

p bank1.balance
bank1.deposit(1000)

p bank1.balance

p bank1.history("Deposit amount is 1000")

p bank1.history("Currently the available balane is 2000")

p bank1.withdraw(500)

p bank1.balance

p bank1.history("withdraw amount is 500")

p bank1.history("Currently the available balane is 1500")



