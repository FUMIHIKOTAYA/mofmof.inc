class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.string :lease_name, null: false
      t.integer :rent, null: false
      t.string  :address, null: false
      t.integer :age, null: false
      t.text :note

      t.timestamps
    end
  end
end
