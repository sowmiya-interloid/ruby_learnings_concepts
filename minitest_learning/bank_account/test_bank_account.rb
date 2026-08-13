require 'minitest/autorun'
require_relative 'bank_account'

class BankAccountTest < Minitest::Test
    def setup
        @bank_account=BankAccount.new(1000)
    end

    def test_initialize
        assert_equal 1000, @bank_account.instance_variable_get(:@balance)
    end

    def test_deposit_success
        @bank_account.deposit(500)
        assert_equal 1500, @bank_account.instance_variable_get(:@balance)
    end

    def test_deposit_invalid_amount
        assert_raises(StandardError) do
            @bank_account.deposit(-100)
        end
    end 

    def test_deposit_zero
        assert_raises(StandardError) do
            @bank_account.deposit(0)
        end
    end


    def test_withdraw_amount_zero
        assert_raises(StandardError) do
            @bank_account.withdraw(0)
        end
    end

    def test_withdraw_amount_negative_amount
        assert_raises(StandardError) do
            @bank_account.withdraw(-800)
        end
    end

    def test_withdraw_amount_is_greater_than_balance
        assert_raises(StandardError) do
            @bank_account.withdraw(@bank_account.instance_variable_get(:@balance)+100)
        end
    end


    def test_withdraw_amount
        @bank_account.withdraw(500)
        assert_equal 500, @bank_account.instance_variable_get(:@balance)
    end
end
