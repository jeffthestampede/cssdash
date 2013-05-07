class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.text :html
      t.text :css
      t.boolean :deleted
      t.boolean :visible
      t.date :created_on

      t.timestamps
    end
  end
end
