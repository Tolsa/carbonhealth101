class Doctor < ApplicationRecord
  belongs_to :specialty
  belongs_to :practice
end
