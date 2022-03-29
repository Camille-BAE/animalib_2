class Appointment < ApplicationRecord
    belongs_to :city
    belongs_to :doctor
    belongs_to :client
    belongs_to :animal
end
