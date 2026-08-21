RSpec.describe "API Spy" do
    it "checks fetch_users was called" do 
        api = double("API")
        allow(api).to receive(:fetch_users)
        api.fetch_users
        expect(api).to have_received(:fetch_users)
    end
end