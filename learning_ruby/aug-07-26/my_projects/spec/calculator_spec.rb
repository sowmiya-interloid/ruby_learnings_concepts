require_relative "../calculator"


RSpec.describe Calculator do 
    it "adds two numbers" do
        calculator = Calculator.new
        expect(calculator.add(2,3)).to eq(5)
    end

    it "multiply two numbers" do
        calculator = Calculator.new
        expect(calculator.multiply(5,6)).to eq(30)
    end

    it "subtract two numbers" do
        calculator=Calculator.new
        expect(calculator.subtract(10,3)).to eq(7)
    end

    it "division two numbers" do
        calculator = Calculator.new
        expect(calculator.division(10,2)).to eq(5)
    end

end


"============================================================================"


p "using before"


RSpec.describe Calculator do 

    before do
        @calculator = Calculator.new
    end


    it "adds two numbers" do
        
        expect(@calculator.add(2,3)).to eq(5)
    end

    it "multiply two numbers" do
        
        expect(@calculator.multiply(5,6)).to eq(30)
    end

    it "subtract two numbers" do
        
        expect(@calculator.subtract(10,3)).to eq(7)
    end

    it "division two numbers" do
        
        expect(@calculator.division(10,2)).to eq(5)
    end

end


"============================================================================"


p "using let"

RSpec.describe Calculator do 

    let(:calculator) do
        Calculator.new
    end


    it "adds two numbers" do
        
        expect(calculator.add(2,3)).to eq(5)
    end

    it "multiply two numbers" do
        
        expect(calculator.multiply(5,6)).to eq(30)
    end

    it "subtract two numbers" do
        
        expect(calculator.subtract(10,3)).to eq(7)
    end

    it "division two numbers" do
        
        expect(calculator.division(10,2)).to eq(5)
    end

end

"============================================================================"


p "using subject"

RSpec.describe Calculator do 

    subject do
        Calculator.new
    end


    it "adds two numbers" do
        
        expect(subject.add(2,3)).to eq(5)
    end

    it "multiply two numbers" do
        
        expect(subject.multiply(5,6)).to eq(30)
    end

    it "subtract two numbers" do
        
        expect(subject.subtract(10,3)).to eq(7)
    end

    it "division two numbers" do
        
        expect(subject.division(10,2)).to eq(5)
    end

end

"============================================================================"


p "using describe as a method"


RSpec.describe Calculator do

    describe "#add" do

        it "return the sum" do
            expect(Calculator.new.add(9,8)).to eq(17)
        end
    end  

    describe "#subtract" do

        it "return the sub" do
            expect(Calculator.new.subtract(8,0)).to eq(8)
        end
    end



end

"============================================================================"


p "using context -- it will tell the situation"


