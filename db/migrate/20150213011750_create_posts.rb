class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.text :content
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    # add_foreign_key :posts, :users
    # add_foreign_key :posts, :categories
  end
end
