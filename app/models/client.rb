class Client < User
    belongs_to :city
    has_many :doctors
    has_many :animals
    has_many :appointments
end
