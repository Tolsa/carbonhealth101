class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.string :phone
      t.string :birthdate
      t.string :address
      t.boolean :InsuranceCardOK
      t.boolean :IsVerified

      t.timestamps
    end
  end
end
