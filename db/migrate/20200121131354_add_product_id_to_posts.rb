class AddProductIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :product_id, :integer
  end
end
