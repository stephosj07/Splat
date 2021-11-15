class CreateCampingSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :camping_spots do |t|
      t.string :location
      t.integer :price
      t.integer :capacity
      t.text :description
      t.references :host, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
