class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :gender
      t.string :fulltitle
      t.references :specialty, foreign_key: true
      t.references :practice, foreign_key: true
      t.string :medicalschool
      t.string :phone
      t.boolean :IsDefaultChatbot
      t.boolean :IsInactive

      t.timestamps
    end
  end
end
