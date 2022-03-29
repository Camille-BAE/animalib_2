class City < ApplicationRecord
    has_many :doctors
    has_many :clients
    has_many :animals
    has_many :appointments

end
