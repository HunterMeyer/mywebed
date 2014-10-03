class AddFavoritedToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :favorited, :boolean
  end
end
