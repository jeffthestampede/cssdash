class AddLikesToContent < ActiveRecord::Migration
  def change
    add_column :contents, :likes, :integer
    add_column :contents, :views, :integer
    add_column :contents, :favorites, :integer
  end
end
