class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.boolean :IsCancelled
      t.boolean :IsPaid
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
