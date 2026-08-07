class Calculator

    def add(a, b)
        a+b
    end
end


RSpec.describe Calculator do
    it "Verify the stub values" do
        calc=Calculator.new
        allow(calc).to receive(:add).and_return(900)
        p calc.add(8,9)
    end
end

p "====================returning different values========================"

RSpec.describe Calculator do
    it "return the different values" do
        calc=double("Calculator")
        allow(calc).to receive(:random_number).and_return(10,34,56)
        p calc.random_number
        p calc.random_number
        p calc.random_number
    end
end