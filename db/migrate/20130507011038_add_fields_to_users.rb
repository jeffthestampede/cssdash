class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :profile_img_url, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :twitter_link, :string
    add_column :users, :github_link, :string
    add_column :users, :dribbble_link, :string
  end
end
