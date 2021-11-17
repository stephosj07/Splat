class AddTitleToCampingSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :camping_spots, :title, :string
  end
end
