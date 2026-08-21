require_relative "../printer.rb"

describe Printer do

    let(:print) {Printer.new}

    it "to_stdout" do
        expect{print.print_message}.to output("Hello RSpec\n").to_stdout
    end


    it "to_stderr" do
        expect{print.print_error}.to output("Something went wrong\n").to_stderr
    end
    
    

end