class CreateCourses < ActiveRecord::Migration
  create_table :courses do |t|
    t.text    :name
    t.text    :school
    t.text    :course_id
    t.text    :url
    t.text    :description
    t.boolean :started
    t.timestamps
  end
end
