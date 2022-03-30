class DoctorsController < ApplicationController

 before_action :authenticate_doctor!, except: [:index]

  def index
    if params[:query].present?
      @profil_doctor = profil_doctor.search(params[:query])
    else
      @profil_doctor = profil_doctor.all
    end
  end

  def show
    @profil_doctor = profil_doctor.find(params[:id])
    @appointments = Appointment.where(doctor: @profil_doctor)
  end

  def edit
    @profil_doctor = profil_doctor.find(params[:id])
  end

  def update
    @profil_doctor = Profil_doctor.find(params[:id])
    if @profil_doctor.update(profil_doctor_params)
      redirect_to profil_doctor_path(@profil_doctor), notice: "Votre profil a bien été enregistré."
    else
      render :edit, alert: "Veuillez rentrer des champs valides."
    end
  end

private 

  def profil_doctor_params 
    params.require(:profil_doctor).permit(:first_name, :last_name, :pricing, :description, :city, specialities: [], time_slots: [])
  end

end
