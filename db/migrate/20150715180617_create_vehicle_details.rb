class CreateVehicleDetails < ActiveRecord::Migration
  def self.up
    create_table :vehicle_details do |t|
      t.column "vehicle_number", :string
      t.column "owner", :string
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :vehicle_details
  end
end
