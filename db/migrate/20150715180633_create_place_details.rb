class CreatePlaceDetails < ActiveRecord::Migration
  def self.up
    create_table :place_details do |t|
      t.column "name", :string
      t.column "distance", :integer
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :place_details
  end
end
