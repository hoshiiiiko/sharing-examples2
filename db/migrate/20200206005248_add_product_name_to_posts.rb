class AddProductNameToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :product_name, :string
  end
end
