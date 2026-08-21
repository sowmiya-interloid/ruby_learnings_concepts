scores = [80, 90, 70, 100]

describe "Array Examples" do

    it "array includes 90" do
        expect(scores).to include(90)
    end

    it "Array contains exactly 80,90,70,100" do
        expect(scores).to contain_exactly(80,90,70,100)
    end

    it "using match_array" do
        expect(scores).to match_array([70,100,90,80])
    end

    it "array starts with 80" do 
        expect(scores).to start_with(80)
    end


    it "array ends with 100" do 
        expect(scores).to end_with(100)
    end

    it "all scores are greater than 50" do
        expect(scores).to all(be > 50)
    end

    it "Another way - all scores are greater than 50" do
        expect(scores.all? {|score| score > 50}).to eq(true)
    end

end