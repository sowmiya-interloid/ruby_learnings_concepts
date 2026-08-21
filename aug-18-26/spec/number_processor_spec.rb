require_relative "../number_processor.rb"

describe NumberProcessor do
    let(:processors) {NumberProcessor.new}

    it "yield to be called" do
        expect{ |block| processors.process(&block)}.to yield_control
    end
end