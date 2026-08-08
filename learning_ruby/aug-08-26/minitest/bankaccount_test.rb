require "minitest/autorun" 

require_relative "bankaccount"


class BankAccountTest < Minitest::Test
    def test_initial_balance
        account=BankAccount.new(300)
        
        assert_equal 300, account.balance
    end
end

