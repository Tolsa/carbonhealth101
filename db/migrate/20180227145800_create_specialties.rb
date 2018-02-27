class CreateSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.boolean :isPopular

      t.timestamps
    end
  end
end
