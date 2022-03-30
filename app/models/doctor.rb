class Doctor < User
    after_create :welcome_send
    
    belongs_to :city
    has_many :appointments
    has_many :clients
    has_many :animals, through: :appointments
    has_many :specialties

  def welcome_send
    DoctorMailer.welcome_email(self).deliver_now
  end

end
