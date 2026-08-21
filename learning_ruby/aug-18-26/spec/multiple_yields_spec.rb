require_relative "../multiple_yields.rb"

describe NumberProcessor do

    let(:processor) {NumberProcessor.new}

    it "multiple yields" do
        expect{ |block| processor.process(&block)}.to yield_successive_args(10, 20, 30)
    end
end