class ChangeCoursesStartedToText < ActiveRecord::Migration
  def change
    change_column :courses, :started, :text
    Course.all.each do |c|
      c.started = c.started == true ? 'Yes' : 'No'
      c.save!
    end
  end
end
