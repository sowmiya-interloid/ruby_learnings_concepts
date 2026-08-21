require_relative "../user.rb"


describe User do

    let(:user) { User.new("Abi",24) }

    it "user name" do
        expect(user.name).to eq("Abi")
    end
    
    it "user age" do
        expect(user.age).to eq(24)
    end

    it "user is an adult" do 
        expect(user).to be_adult
    end

    it "user is not nil" do
        expect(user.name).not_to be_nil
    end

    it "name is a String" do
        expect(user.name).to be_a(String)
    end

    it "age is an Integer" do
        expect(user.age).to be_a(Integer)
    end

end