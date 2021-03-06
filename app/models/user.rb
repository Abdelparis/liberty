class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :skills
  has_many :job_categories, through: :skills
  has_many :missions
  validates :role, inclusion: { in: ["freelancer", "company"] }
  validates :first_name, :last_name, :email, :phone_number, :address, presence: true
  has_one_attached :avatar
  has_many_attached :photos
  accepts_nested_attributes_for :skills
end
