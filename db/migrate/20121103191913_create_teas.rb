class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.primary_key :id
      t.string :name
      t.string :company
      t.text :description
      t.string :tea_type
      t.integer :rating
      t.string :photo_url
      t.integer :drink_frequency
      t.string :origin
      t.string :store_url
      t.string :steep_time
      t.string :steep_amount
      t.string :steep_temperature
      t.text :metadata
      t.timestamps
    end
  end
end
