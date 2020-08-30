class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|

      t.timestamps
    end
  end
end
