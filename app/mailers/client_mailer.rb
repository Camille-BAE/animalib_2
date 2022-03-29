class ClientMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def welcome_email
      @client = params[:client]
      @url  = 'https://animalib-2.herokuapp.com/clients/sign_in'
      mail(to: @client.email, subject: 'Bienvenue sur Animalib, ton animal te remercie !')
    end
  end
