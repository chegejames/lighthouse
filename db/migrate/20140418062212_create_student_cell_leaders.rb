class CreateStudentCellLeaders < ActiveRecord::Migration
  def change
    create_table :student_cell_leaders do |t|
      t.references :student
      t.references :cell_leader
      t.date :date

      t.timestamps
    end
    add_index :student_cell_leaders, :student_id
    add_index :student_cell_leaders, :cell_leader_id
  end
end
