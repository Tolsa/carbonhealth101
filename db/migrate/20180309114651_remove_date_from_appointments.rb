class RemoveDateFromAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :date, :string
  end
end
