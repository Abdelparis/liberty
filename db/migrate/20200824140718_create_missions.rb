class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.string :address
      t.decimal :price_by_hour
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.references :job_category_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
