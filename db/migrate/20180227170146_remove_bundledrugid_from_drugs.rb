class RemoveBundledrugidFromDrugs < ActiveRecord::Migration[5.1]
  def change
    remove_reference :drugs, :bundledrug, foreign_key: true
  end
end
