require '../bankaccount.rb'

RSpec.describe BankAccount do

    let(:bankaccount) do
        BankAccount.new(800)
    end
    let(:lessamount_bankaccount) do
        BankAccount.new(100)
    end

describe "#balance" do

    it "returns the initial balance" do
        expect(bankaccount.balance).to eq(800)
    end
end


describe "#deposit" do

    it "increases balance after deposit" do
        bankaccount.deposit(700)
        expect(bankaccount.balance).to eq(1500)
    end

end


describe "#withdraw" do

    it "decreases balance after withdrawal" do
        bankaccount.withdraw(500)
        expect(bankaccount.balance).to eq(300)
    end

    it "does not withdraw when balance is insufficient" do
        
        expect{ lessamount_bankaccount.withdraw(500) }.to raise_error("Insufficient Amount")
    end
end


end