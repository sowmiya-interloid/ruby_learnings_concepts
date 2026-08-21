class UserService
    def initialize(logger)
        @logger = logger
    end

    def create_user
        @logger.info("Creating user")
        @logger.info("User created")
    end
end