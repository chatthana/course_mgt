class CreateCourseCategoryMappers < ActiveRecord::Migration[5.0]
  def change
    create_table :course_category_mappers do |t|
      t.integer :course_id
      t.integer :category_id
      t.text :remarks

      t.timestamps
    end
  end
end
