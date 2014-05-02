class CreateStudentPastors < ActiveRecord::Migration
  def change
    create_table :student_pastors do |t|
      t.references :pastor
      t.references :student
      t.date :date

      t.timestamps
    end
    add_index :student_pastors, :pastor_id
    add_index :student_pastors, :student_id
  end
end
