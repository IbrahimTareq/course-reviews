class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_code
      t.string :uni_name

      t.timestamps
    end
  end
end
