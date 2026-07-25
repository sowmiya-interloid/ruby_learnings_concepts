class Product
    attr_reader :name, :price, :stock

    def initialize(name, price, stock)
        @name = name
        @price = price
        @stock = stock
    end
end

class Order
    attr_reader :products, :status, :payment

    def initialize(status)
        @products = []
        @status = status
        @payment = nil
    end

    def add_product(product)
        @products << product
    end
    def total
        @products.sum { |p| p.price }
    end

    def make_payment(payment)
        @payment = payment
    end
end

class Payment
    attr_reader :process, :receipt, :refund

    def initialize(process, receipt, refund)
        @process = process
        @receipt = receipt
        @refund = refund
    end
end

phone = Product.new("Phone", 30000, 5)

order = Order.new("Placed")
order.add_product(phone)

payment = Payment.new("Success", "Receipt-101", "Not Refunded")
order.make_payment(payment)

puts order.payment.process
puts order.payment.receipt