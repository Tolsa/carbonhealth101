class AddDateToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :date, :datetime
  end
end
