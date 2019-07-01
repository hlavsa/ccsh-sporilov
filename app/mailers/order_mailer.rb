class OrderMailer < ApplicationMailer

    default to: 'hlavsa.jara@seznam.cz'
  
    def order_mail
      @order = Order.new(params)
      @name = @order.name
      mail(from: @order.mail, subject: 'Stránky Spořilov - prosba o přímluvu')
    end
  
  end