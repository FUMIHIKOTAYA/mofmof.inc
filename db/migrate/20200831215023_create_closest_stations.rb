class CreateClosestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :closest_stations do |t|

      t.timestamps
    end
  end
end
