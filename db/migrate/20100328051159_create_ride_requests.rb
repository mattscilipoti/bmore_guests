class CreateRideRequests < ActiveRecord::Migration
  def self.up
    create_table :ride_requests do |t|
      t.datetime :pickup_at
      t.string :email
      t.string :phone
      t.timestamps
    end
  end

  def self.down
    drop_table :ride_requests
  end
end
