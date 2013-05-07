class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :content_id
      t.boolean :deleted
      t.boolean :shared_on_fb
      t.boolean :shared_on_twitter

      t.timestamps
    end
  end
end
