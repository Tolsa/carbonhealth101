class CreateBundledrugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bundledrugs do |t|
      t.boolean :IsDelivered
      t.boolean :IsReceived
      t.references :prescription, foreign_key: true

      t.timestamps
    end
  end
end
