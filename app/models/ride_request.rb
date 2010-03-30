class RideRequest < ActiveRecord::Base
  validates_presence_of :pickup_at
  validates_presence_of :email
end
