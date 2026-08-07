class User
    
end   
    
RSpec.describe "Double" do

it "creates a fake object" do
    user = double("User")

    expect(user).to be_a(RSpec::Mocks::Double)
end

end

RSpec.describe "Double" do

it "returns fake name" do
    user = double("User", name: "Sowmiya")

    expect(user.name).to eq("Sowmiya")
end

end