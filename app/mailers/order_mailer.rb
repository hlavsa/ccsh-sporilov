class OrderMailer < ApplicationMailer

    default to: 'hlavsa.jara@seznam.cz'

    def order_mail
      @order = Order.new(params)
      mail(from: 'primluvysporilov@gmail.com', subject: 'Stránky Spořilov - prosba o přímluvu')
    end

  end
