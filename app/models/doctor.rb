class Doctor < ApplicationRecord
  belongs_to :specialty
  belongs_to :practice
  has_many :appointments
  # has_many :patients, through: :appointments
end
