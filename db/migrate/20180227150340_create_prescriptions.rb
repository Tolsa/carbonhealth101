class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :description
      t.boolean :IsOrdered
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end
