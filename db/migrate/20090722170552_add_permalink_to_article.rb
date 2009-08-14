class AddPermalinkToArticle < ActiveRecord::Migration
  def self.up
    add_column :posts, :permalink, :string
    add_column :users, :permalink, :string
  end

  def self.down
    remove_column :posts, :permalink
    remove_column :users, :permalink
  end
end
