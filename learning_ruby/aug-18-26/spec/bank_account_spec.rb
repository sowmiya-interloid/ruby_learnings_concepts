require_relative "../bank_account.rb"

describe BankAccount do 
    let(:account) {BankAccount.new}

    it "withdrawing 100 works" do
        expect(account.withdraw(100)).to eq(100)
    end 

    it "withdrawing 0 raises ArgumentError" do
        expect{account.withdraw(0)}.to raise_error(ArgumentError)
    end 

    it "withdrawing -50 raises ArgumentError" do
        expect{account.withdraw(-50)}.to raise_error(ArgumentError)
    end 

    it "withdrawing -40 raises ArgumentError" do
        expect{account.withdraw(-40)}.to raise_error(ArgumentError,"Invalid amount")
    end 

end