class Bundledrug < ApplicationRecord
  belongs_to :prescriptions
  belongs_to :drugs
end
