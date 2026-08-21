require_relative "../counter.rb"


describe Counter do 

    let(:counter) { Counter.new}

    it "increment changes count by 1" do
        expect{counter.increment}.to change(counter, :count).by(1)
    end
    
    it "decrement changes count by -1" do
        expect{counter.decrement}.to change(counter, :count).by(-1)
    end

    it "increment changes count from 0 to 1" do
        expect{counter.increment}.to change(counter, :count).from(0).to(1)
    end
end