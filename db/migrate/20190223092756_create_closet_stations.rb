class CreateClosetStations < ActiveRecord::Migration[5.0]
  def change
    create_table :closet_stations do |t|
      t.string :route
      t.string :station
      t.integer :walk_time
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
