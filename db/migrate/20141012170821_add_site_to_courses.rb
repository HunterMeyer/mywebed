class AddSiteToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :site, :text
  end
end
