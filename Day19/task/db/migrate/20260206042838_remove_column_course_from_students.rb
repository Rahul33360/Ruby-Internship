class RemoveColumnCourseFromStudents < ActiveRecord::Migration[8.1]
  def change
    remove_column :students, :course, :string
  end
end
