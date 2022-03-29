class DoctorMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'

    def welcome_email
      @doctor = params[:doctor]
      @url  = 'https://animalib-2.herokuapp.com/doctors/sign_in'
      mail(to: @doctor.email, subject: 'Bienvenue sur Animalib, Doctor !')
    end

  end
