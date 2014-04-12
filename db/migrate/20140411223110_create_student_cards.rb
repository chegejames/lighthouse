class CreateStudentCards < ActiveRecord::Migration
  def change
    create_table :student_cards do |t|
      t.references :student
      t.string :attendance
      t.float :days_journaled
      t.float :days_prayed
      t.boolean :attended_cell
      t.boolean :attended_church
      t.float :assignment_one
      t.float :assignment_two
      t.float :memory_verse
      t.float :test
      t.float :bible_reading

      t.timestamps
    end
    add_index :student_cards, :student_id
  end
end
