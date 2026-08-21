require_relative '../logger.rb'

RSpec.describe UserService do
    it "test using exactly(2) times" do
        logger = double("Logger")
        expect(logger).to receive(:info).exactly(2).times
        user_service = UserService.new(logger)
        user_service.create_user
    end
    it "test using twice" do
        logger = double("Logger")
        expect(logger).to receive(:info).twice
        user_service = UserService.new(logger)
        user_service.create_user
    end
end