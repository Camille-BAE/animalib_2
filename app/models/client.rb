class Client < User
    after_create :welcome_send
    
    belongs_to :city
    has_many :doctors
    has_many :animals
    has_many :appointments

    

  def welcome_send
    ClientMailer.welcome_email(self).deliver_now
  end
end
