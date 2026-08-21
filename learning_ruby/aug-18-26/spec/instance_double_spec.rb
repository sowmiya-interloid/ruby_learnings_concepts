require_relative "../instance_double.rb"

RSpec.describe UserRepository do
    it "returns user when find is called" do
        repository = instance_double(UserRepository)

        allow(repository).to receive(:find).with(1).and_return({name:"Sowmiya"})

        result = repository.find(1)

        expect(result).to eq({name: "Sowmiya"})
    end
end