class BankAccount
    
    def initialize(balance)
        @balance=balance
    end


    def compare_with_bankaccounts(secondbankaccount)
        if(balance > secondbankaccount.balance)

            "1 st bank account have more balance"
        
        elsif(balance == secondbankaccount.balance)

            "Both have same balance"

        else
            "2 nd bank account have more balance"

        end
    end


    protected
    
    def balance
        @balance
    end

end


bank1 = BankAccount.new(40000)

bank2 = BankAccount.new(40000)

p bank1.compare_with_bankaccounts(bank2)




