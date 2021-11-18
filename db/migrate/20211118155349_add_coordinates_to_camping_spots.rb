class AddCoordinatesToCampingSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :camping_spots, :latitude, :float
    add_column :camping_spots, :longitude, :float
  end
end
