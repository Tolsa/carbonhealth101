class Practice < ApplicationRecord
  has_many :appointments, through: :doctors
end
