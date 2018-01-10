class Skill < ApplicationRecord
  belongs_to :student
  def as_json
    {
      skill_name: skill_name,
      student_id: student_id
    }
  end
end
