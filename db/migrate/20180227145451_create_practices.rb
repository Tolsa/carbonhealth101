class CreatePractices < ActiveRecord::Migration[5.1]
  def change
    create_table :practices do |t|
      t.string :name
      t.string :mainSpecialty
      t.string :about
      t.string :email
      t.string :phone
      t.boolean :AcceptsAutoBill
      t.boolean :AcceptsAutoAppointment
      t.boolean :IsLive
      t.boolean :IsDemo

      t.timestamps
    end
  end
end
