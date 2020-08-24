class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :mission, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :total_price
      t.boolean :accepted
      t.text :freelancer_review
      t.integer :freelancer_rating
      t.text :company_review
      t.integer :company_rating

      t.timestamps
    end
  end
end
