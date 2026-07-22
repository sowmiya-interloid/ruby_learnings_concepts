# Private and public methods

class Account

    def initialize(balance)
    @bal = balance
    end

    def withdrew(amount)
        log(amount)
        @bal=@bal-amount
    end


    private

    def log(amount)
        p "Withdrew #{amount}"
    end
end


acc=Account.new(20000)

p acc.withdrew(100)

p "-------------------------------------------------------------------------"


# Protected

class Account
    def initialize(balance)
        @bal=balance
    end



    def richer(other)
        if(self.balance>other.balance)
            p "1 st object is richer"
        else
            p "Second object is richer"
        end
    end

    protected

    def balance
        @bal
    end

end

acc1=Account.new(90000)

acc2=Account.new(80000)


acc1.richer(acc2)
