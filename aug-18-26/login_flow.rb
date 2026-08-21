class LoginService
    def initialize(auth, logger)
        @auth = auth
        @logger = logger
    end 


    def login
        @auth.authenticate
        @logger.info("Logged in")
    end
end
