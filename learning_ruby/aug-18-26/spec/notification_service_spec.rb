require_relative "../notification_service.rb"

RSpec.describe Order do

    it "notification service" do
        notification_server = double("NotificationServer")
        expect(notification_server).to receive(:send_notification)
        order = Order.new(notification_server)
        order.place
    end
    
    
end