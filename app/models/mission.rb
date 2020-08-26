class Mission < ApplicationRecord
  belongs_to :job_category
  belongs_to :user
  has_many :bookings
  validates :name, :description, :address, :price_by_hour, :start_date_time, :end_date_time, presence: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
