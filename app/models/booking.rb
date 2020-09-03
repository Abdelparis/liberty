class Booking < ApplicationRecord
  belongs_to :mission
  belongs_to :user
  has_many :chatrooms
  validates :status, acceptance: { accept: ['pending', 'accepted', 'rejected', 'canceled'] }
end
