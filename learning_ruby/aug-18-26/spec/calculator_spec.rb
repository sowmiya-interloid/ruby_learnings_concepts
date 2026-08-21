require_relative '../calculator.rb'

describe Calculator do
    let(:calculator) { Calculator.new }
    
    it "add two numbers" do
        expect(calculator.add(10,5)).to eq(15)
    end

    it "subtracts two numbers" do
        expect(calculator.subtract(10,5)).to eq(5)
    end

    it "add doesn't return 20" do
        expect(calculator.add(10,5)).not_to eq(20)
    end
end