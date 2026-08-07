RSpec.describe "Matchers" do
    it "addition two num" do
        expect(7+3).to eq(10)
    end

    it "Start_with" do
        expect("Sowmiya").to start_with("Sow")
    end

    it "includes" do
        expect("Ruby on Rails").to include("Rails")
    end

    it "end_with" do
        expect([10,20,30]).to end_with(30)
    end

    it "nil" do
        expect(nil).to be_nil
    end

    it "falsey" do
        expect(false).to be_falsey
    end

    it "abc123" do
        expect("abc123").to match(/\d+/)
    end

    it "not_to" do
        expect([1,2,3]).not_to include(5)
    end


end