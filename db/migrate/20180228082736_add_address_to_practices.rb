class AddAddressToPractices < ActiveRecord::Migration[5.1]
  def change
    add_column :practices, :address, :string
  end
end
