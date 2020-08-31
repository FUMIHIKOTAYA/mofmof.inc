class CreateClosestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :closest_stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :minute_walk
      t.references :lease, foreign_key: true
      
      t.timestamps
    end
  end
end
