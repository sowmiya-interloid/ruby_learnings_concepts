# Shared_examples and include_examples with passing parameter

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

RSpec.shared_examples "animal sound" do |sound|
    it "return sound" do
        expect(subject.speak).to eq(sound)
    end
end


RSpec.describe Dog do
    subject {Dog.new}

    include_examples "animal sound","Bark"
end


RSpec.describe Cat do
    subject {Cat.new}

    include_examples "animal sound","Meow"
end


