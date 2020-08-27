class Changecolumnaccepted < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :accepted, :string, default:"pending"
  end
end
