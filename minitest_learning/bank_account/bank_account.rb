class BankAccount
    def initialize(balance)
        @balance = balance
    end
    def deposit(amount)
        raise StandardError,"Amount must be greater than 0" if amount <= 0
        @balance+=amount
    end
    def withdraw(amount)
        raise StandardError, "Amount must be greater than 0" if amount <= 0
        raise StandardError, "Insufficient Error" if amount > @balance
        @balance-=amount
    end
end