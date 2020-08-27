class Booking < ApplicationRecord
  belongs_to :mission
  belongs_to :user
  validates :status, acceptance: { accept: ['pending', 'accepted', 'rejected', 'canceled'] }
end
