class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :caption
      t.string :location
      t.integer :user_id
      t.integer :likes, :default => 0
      t.timestamps
    end
  end
end
