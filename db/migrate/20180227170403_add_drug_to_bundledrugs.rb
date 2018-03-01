class AddDrugToBundledrugs < ActiveRecord::Migration[5.1]
  def change
    add_reference :bundledrugs, :drug, foreign_key: true
  end
end
