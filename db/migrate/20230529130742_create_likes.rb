class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :article_id, null: false
      t.uuid :user_id, null: false

      t.timestamps
    end
    add_index :likes, :article_id
    add_index :likes, :user_id
  end
end
