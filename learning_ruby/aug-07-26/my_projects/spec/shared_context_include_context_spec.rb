RSpec.shared_context "user setup" do

    let(:user) {"Sowmiya"}


    before do 
        puts "Creating User..."
    end
end


RSpec.describe "Example" do
    include_context "user setup"


    it "has user" do
        expect(user).to eq("Sowmiya")
    end

end