class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'pending'
      t.date :arrival_date
      t.date :departure_date
      t.references :camping_spot, null: false, foreign_key: true
      t.references :visitor, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
