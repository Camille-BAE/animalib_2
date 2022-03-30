class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if @client
     profil_client_path(@client.profil_client)
    else @doctor
      profil_doctor_path(@doctor.profil_doctor)
    end
  end

end
