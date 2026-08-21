require_relative "../age_validator.rb"
describe AgeValidator do

    let(:validator) {AgeValidator.new}

    it "25 is valid" do
        expect(validator.valid?(25)).to be true
    end

    it "17 is valid" do
        expect(validator.valid?(17)).to be false
    end

    it "61 is valid" do
        expect(validator.valid?(61)).to be false
    end

    it "18 is valid" do
        expect(validator.valid?(18)).to be true
    end

    it "60 is valid" do
        expect(validator.valid?(60)).to be true
    end

    age_range = 18..60

    it "range from 18..60" do
        expect(age_range).to cover(25)
        expect(age_range).to cover(60)
    end

end