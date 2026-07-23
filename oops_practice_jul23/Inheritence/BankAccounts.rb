class Account

    def initialize(balance)
        @balance=balance
    end

    def deposit(amount)
        @balance=@balance+amount
    end

    def balance
        @balance
    end

end


class SavingsAccount < Account

    def deposit(amount)

        if(amount<1000)
            interest=1
        elsif(amount>=1000 && amount<=2000)
            interest=2
        elsif(amount>2000 && amount<=5000)
            interest=5
        else
            interest=6
        end

        savingamount=amount*interest/100

        super(amount + savingamount)

    end
    
end

acc=Account.new(100)

p acc.deposit(400)

acc1=SavingsAccount.new(1000)

p acc.deposit(500)

p acc1.deposit(100)

p acc.deposit(1000)

p acc1.deposit(500)






