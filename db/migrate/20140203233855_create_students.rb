class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.integer :stuid
      t.string :major

      t.timestamps
    end
  end
end
