class AddStudentIdToEducations < ActiveRecord::Migration[5.1]
  def change
    add_column :educations, :student_id, :integer
  end
end
