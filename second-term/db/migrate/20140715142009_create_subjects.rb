class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :subject_id
      t.boolean :active
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
