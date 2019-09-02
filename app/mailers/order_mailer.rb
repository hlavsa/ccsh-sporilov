class OrderMailer < ApplicationMailer

    default to: 'hlavsa.jara@seznam.cz'

    def order_mail
      @order = Order.new(params)
      mail(from: 'noreply@primluva.cz', subject: 'Stránky Spořilov - prosba o přímluvu')
    end

  end
