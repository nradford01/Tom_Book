class RemoveDateFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :date, :date
  end
end
