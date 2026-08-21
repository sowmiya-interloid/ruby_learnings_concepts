class CheckoutService
  def initialize(payment_gateway, email_service)
    @payment_gateway = payment_gateway
    @email_service = email_service
  end


  def checkout(product, quantity, email)
    return :out_of_stock unless product.available?

    amount = product.price * quantity

    return :payment_failed unless @payment_gateway.charge(amount)

    product.reduce_stock(quantity)

    @email_service.send_receipt(email, amount)

    :success

  end

end