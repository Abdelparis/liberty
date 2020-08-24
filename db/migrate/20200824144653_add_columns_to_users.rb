class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :description, :text
    add_column :users, :role, :string
    add_column :users, :portfolio_url, :string
    add_column :users, :average_rating, :float
    add_column :users, :price_by_hour, :float
  end
end
