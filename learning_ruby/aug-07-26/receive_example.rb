RSpec.describe "logger practice" do
    it "logger object should be used" do

        logger=double("Logger")

        expect(logger).to receive(:info)

        logger.info
    end
end