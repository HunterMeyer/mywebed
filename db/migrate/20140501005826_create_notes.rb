class CreateNotes < ActiveRecord::Migration
  create_table :notes do |t|
    t.text    :content
    t.integer :course_id
    t.timestamps
  end
end
