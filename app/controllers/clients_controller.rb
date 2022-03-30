class ClientsController < ApplicationController

  #before_action :authenticate_client!

  def show
    @profil_client = Profil_client.find(params[:id])
    @appointments = @profil_client.client.appointments
  end

  def edit
    @profil_client  = Profil_client.find(params[:id]) 
  end

  def update
    @profil_client  = Profil_client.find(params[:id])  
    if @profil_client.update(profil_client_params)
      redirect_to profil_client_path(@profil_client), notice: "Votre profil a bien été enregistré."
    else
      render :edit, alert: "Veuillez rentrer des champs valides."
  end

  private 

  def profil_client_params
    params.require(:profil_client).permit(:name, :city, :phone_number, :business_line)
  end
  
end
