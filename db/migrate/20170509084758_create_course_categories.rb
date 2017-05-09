class CreateCourseCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :course_categories do |t|
      t.string :name, limit: 64
      t.text :description
      t.integer :active, limit: 1

      t.timestamps
    end
  end
end
