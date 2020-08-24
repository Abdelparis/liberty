class Booking < ApplicationRecord
  belongs_to :mission_id
  belongs_to :user_id
end
