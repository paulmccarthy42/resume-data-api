class Education < ApplicationRecord
  belongs_to :student

  def as_json
    {
    start_date: start_date,
    end_date: end_date,
    degree: degree,
    university_name: university_name,
    details: details,
    student_id: student_id
    }
  end
end
