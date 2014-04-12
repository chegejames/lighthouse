class CreateCellLeaders < ActiveRecord::Migration
  def change
    create_table :cell_leaders do |t|
      t.string :name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
