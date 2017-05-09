class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_id, limit: 32
      t.string :course_name, limit: 128
      t.text :course_description
      t.integer :max_students
      t.date :course_date
      t.time :course_start_time
      t.time :course_end_time

      t.timestamps
    end
  end
end
