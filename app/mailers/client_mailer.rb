class ClientMailer < ApplicationMailer
    default from: 'taos.tou@gmail.com'

    def welcome_email
      @client = params[:client]
      @urlclient  = 'https://animalib-2.herokuapp.com/clients/sign_in'
      mail(to: @client.email, subject: 'Bienvenue sur Animalib, ton animal te remercie !')
    end
  end
