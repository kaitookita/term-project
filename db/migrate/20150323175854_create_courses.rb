class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course
      t.string :coursename
      t.string :lecturer
      t.integer :semester
      t.integer :year
      t.string :room
      t.string :examdate

      t.timestamps
    end
  end
end
