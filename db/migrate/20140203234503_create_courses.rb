class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :prof
      t.time :time
      t.float :credits
      t.string :semester

      t.timestamps
    end
  end
end
