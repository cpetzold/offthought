class MoreConnectionStuff < ActiveRecord::Migration
  def self.up
    add_column :posts, :user_id, :integer
    add_column :replies, :title, :string
  end

  def self.down
    remove_column :posts, :user_id
    remove_column :replies, :title
  end
end
