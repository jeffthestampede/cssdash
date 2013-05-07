class CreateContentTags < ActiveRecord::Migration
  def change
    create_table :content_tags do |t|
      t.integer :content_id
      t.string :name

      t.timestamps
    end
  end
end
