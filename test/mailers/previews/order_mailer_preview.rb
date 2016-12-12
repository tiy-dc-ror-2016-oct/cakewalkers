# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  def confirm_order
    OrderMailer.confirm_order(Order.last)
  end

end
