class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.text :point
      t.text :result
      t.string :appeal
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
