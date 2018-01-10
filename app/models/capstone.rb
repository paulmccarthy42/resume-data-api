class Capstone < ApplicationRecord
  belongs_to :student

  def as_json
    {
      name: name,
      description: description,
      url: url,
      student_id: student_id
    }
  end
end
