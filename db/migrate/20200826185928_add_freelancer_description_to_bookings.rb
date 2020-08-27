class AddFreelancerDescriptionToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :freelancer_description, :text
  end
end
