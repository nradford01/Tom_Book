class AddOrderToStories < ActiveRecord::Migration
  def change
    add_column :stories, :Order, :integer
  end
end
