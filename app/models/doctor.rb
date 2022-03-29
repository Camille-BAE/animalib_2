class Doctor < User
    belongs_to :city
    has_many :appointments
    has_many :clients
    has_many :animals, through: :appointments
    has_many :specialties
end
