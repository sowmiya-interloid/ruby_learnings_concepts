require_relative "../using_bewithin.rb"

describe Temperature do

    let(:temp) {Temperature.new}

    it "floating point" do
        expect(temp.convert).to be_within(0.1).of(98.6)
    end
end

