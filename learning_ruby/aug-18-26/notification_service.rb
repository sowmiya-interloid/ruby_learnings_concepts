class Order
    def initialize(notification_service)
        @notification_service = notification_service
    end

    def place
        @notification_service.send_notification
    end
end