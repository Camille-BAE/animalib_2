class Doctor < User
    belongs_to :city
    has_many :appointments
    has_many :clients
    has_many :animals, through: :appointments
    has_many :specialties

    after_create :welcome_send
  def welcome_send
    DoctorMailer.welcome_email(self).deliver_now
  end
end
