class Animal < ApplicationRecord
    belongs_to :city
    belongs_to :client
    has_many :doctors, through: :appointments

end
