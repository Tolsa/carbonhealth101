class CreateDrugs < ActiveRecord::Migration[5.1]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :description
      t.references :bundledrug, foreign_key: true
      t.boolean :IsAvailable

      t.timestamps
    end
  end
end
