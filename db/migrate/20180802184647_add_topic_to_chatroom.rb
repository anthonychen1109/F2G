class AddTopicToChatroom < ActiveRecord::Migration[5.2]
  def change
    add_column :chatrooms, :topic, :string
  end
end
