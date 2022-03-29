class DoctorMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def welcome_email
      @doctor = params[:doctor]
      @url  = 'http://example.com/login'
      mail(to: @doctor.email, subject: 'Bienvenue sur Animalib')
    end

  end
