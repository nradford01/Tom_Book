class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.date :date
      t.string :url
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
