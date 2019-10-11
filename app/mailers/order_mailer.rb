class OrderMailer < ApplicationMailer

    default to: 'jan.hlavsa@seznam.cz'

    def order_mail
      @order = Order.new(params)
      mail(from: 'primluvysporilov@gmail.com', subject: 'Stránky Spořilov - prosba o přímluvu')
    end

  end
