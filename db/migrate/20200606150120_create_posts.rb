class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :file
      t.text :detail
      t.integer :user_id
      t.timestamps
    end
  end
end
