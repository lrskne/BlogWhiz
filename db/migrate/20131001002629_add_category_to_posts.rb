class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category, :string  , { limit: 15 }
  end
end
