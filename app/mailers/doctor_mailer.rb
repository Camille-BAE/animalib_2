class DoctorMailer < ApplicationMailer
    default from: 'taos.tou@gmail.com'

    def welcome_email
      @doctor = params[:doctor]
      @urldoctor  = 'https://animalib-2.herokuapp.com/doctors/sign_in'
      mail(to: @doctor.email, subject: 'Bienvenue sur Animalib, Doctor !')
    end

  end
