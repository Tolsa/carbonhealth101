class AddValidatedToPractices < ActiveRecord::Migration[5.1]
  def change
    add_column :practices, :validated, :boolean
  end
end
