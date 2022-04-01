class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if @client
      client_path(@client.profil_client)
    else @doctor
      doctor_path(@doctor.profil_doctor)
    end
  end

end
