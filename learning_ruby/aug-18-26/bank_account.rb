class BankAccount
    def withdraw(amount)
        raise ArgumentError, "Invalid Amount" if amount <= 0

        amount
    end
end