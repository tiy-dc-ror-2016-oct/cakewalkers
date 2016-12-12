class OrderMailer < ApplicationMailer

  def confirm_order(order)
    @order = order
    mail(
      to: order.email,
      subject: 'Order Reciept from Cakewalkers'
    )
  end

end
