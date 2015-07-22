class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.references :story, index: true
      t.string :title
      t.integer :number
      t.string :url

      t.timestamps null: false
    end
    add_foreign_key :chapters, :stories
  end
end
