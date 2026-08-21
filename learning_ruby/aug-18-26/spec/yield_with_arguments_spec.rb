require_relative "../yield_with_arguments.rb"

describe NumberProcessor do

    let(:processors) {NumberProcessor.new}

    it "yield with arguments" do
        expect {|block| processors.process(&block)}.to yield_with_args(10)
    end
end