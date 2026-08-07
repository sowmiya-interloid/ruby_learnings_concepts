# Shared_examples and include_examples

class Dog
    def speak
        "Bark"
    end
end

class Cat
    def speak
        "Meow"
    end
end

RSpec.shared_examples "can speak" do
    it "responds to speak" do
        expect(subject).to respond_to(:speak)
    end
end


RSpec.describe Dog do
    subject {Dog.new}

    include_examples "can speak"
end


RSpec.describe Cat do
    subject {Cat.new}

    include_examples "can speak"
end


