class AddCategorytoSupports2 < ActiveRecord::Migration
  def change
  	add_column :supports, :category, :string
  end
end
