require_relative "../even_odd.rb"

describe NumberChecker do
    let(:numberchecker) {NumberChecker.new}
    it "even number checker" do
        expect(20).to be_even
    end
    it "odd number checker" do
        expect(21).to be_odd
    end
end