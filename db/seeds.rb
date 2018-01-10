# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(
  first_name: "Testy",
  last_name: "McTestface",
  email: "email",
  phone_number: "phone_number",
  short_bio: "short_bio",
  linkedin_url: "linkedin_url",
  twitter_handle: "twitter_handle",
  personal_blog_url: "personal_blog_url",
  online_resume_url: "online_resume_url",
  github_url: "github_url",
  photo: "photo"
)

Skill.create(
  skill_name: "Being awesome",
  student_id: 1)

Experience.create(
  start_date: "2017-01-01",
  end_date: "2018-01-01",
  job_title: "job_title",
  company_name: "company_name",
  details: "reughserufgrengoresngjoersngjnrjgnesoneorsngjoersng",
  student_id: 1)

Education.create(
  start_date: "2017-01-01",
  end_date: "2018-01-01",
  degree: "job_title",
  university_name: "company_name",
  details: "reughserufgrengoresngjoersngjnrjgnesoneorsngjoersng",
  student_id: 1)

Capstone.create(
  name: "Being awesome",
  description: "Being awesome",
  url: "Being awesome",
  screenshot: "Being awesome",
  student_id: 1)