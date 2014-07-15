class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :teacher_id
      t.integer :actives_subjects

      t.timestamps
    end
  end
end
