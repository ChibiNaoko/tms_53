class CreateCourseSubjects < ActiveRecord::Migration
  def change
    create_table :course_subjects do |t|
      t.integer :status, default: 0
      t.references :course, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
      t.integer :status
      t.timestamps null: false
    end
    add_index :course_subjects, [:course_id, :subject_id], unique: true
  end
end
