class AddStudentIdToCapstones < ActiveRecord::Migration[5.1]
  def change
    add_column :capstones, :student_id, :integer
  end
end
