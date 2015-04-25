class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.integer :identificationnumber
      t.string :name
      t.string :faculty
      t.string :department

      t.timestamps
    end
  end
end
