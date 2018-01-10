class Student < ApplicationRecord
  has_secure_password 
  # validates :name, presence: true 
  # validates :email, presence: true, uniqueness: true 
  
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :capstones

  def as_json
    {
      first_name: first_name,
      last_name: last_name,
      email: email,
      phone_number: phone_number,
      short_bio: short_bio,
      linkedin_url: linkedin_url,
      twitter_handle: twitter_handle,
      personal_blog_url: personal_blog_url,
      online_resume_url: online_resume_url,
      github_url: github_url,
      photo: photo,
      experiences: experiences,
      educations: educations,
      skills: skills,
      capstones: capstones
    }

  end
end
