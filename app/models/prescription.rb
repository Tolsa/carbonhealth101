class Prescription < ApplicationRecord
  belongs_to :appointment
  has_many :bundledrugs
end
