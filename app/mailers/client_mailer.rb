class ClientMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def welcome_email
      @client = params[:client]
      @url  = 'http://example.com/login'
      mail(to: @client.email, subject: 'Bienvenue sur Animalib')
    end
  end
