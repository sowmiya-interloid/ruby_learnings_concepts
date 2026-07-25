module Payments

    class Gpay
        def pay
            "using Gpay"
        end
    end

    class Phonepay
        def pay
            "using Phonepay"
        end
    end
end

puts Payments::Gpay.new.pay

puts Payments::Phonepay.new.pay