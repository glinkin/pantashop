class OrderMailer < ActionMailer::Base
  default from: 'sale@pantashop.ru'

  def order_email(phone_order)
    @phone_order = phone_order
    @url  = 'http://pantashop.ru/'
    mail(to: 'djbm@mail.ru', subject: 'Welcome to My Awesome Site')
  end
end
