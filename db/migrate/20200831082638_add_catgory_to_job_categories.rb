class AddCatgoryToJobCategories < ActiveRecord::Migration[6.0]
  def change
     add_column :job_categories, :category, :string
  end
end
