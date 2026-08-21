require_relative '../login_flow.rb'

RSpec.describe LoginService do
    it "order happening authenticate - logger" do
        auth = double("Auth")
        logger = double("Logger")

        expect(auth).to receive(:authenticate).ordered
        expect(logger).to receive(:info).with("Logged in").ordered

        login_service = LoginService.new(auth,logger)
        login_service.login
    end
end
    