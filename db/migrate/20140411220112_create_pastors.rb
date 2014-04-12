class CreatePastors < ActiveRecord::Migration
  def change
    create_table :pastors do |t|
      t.string :name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
