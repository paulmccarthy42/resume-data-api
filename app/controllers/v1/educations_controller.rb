class V1::EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations.as_json
  end

  def create
    education = Education.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      job_title: params["job_title"],
      company_name: params["company_name"],
      details: params["details"]
      )
    if education.save 
      render json: education.as_json 
    else 
      render json: {error: education.errors.full_messages}, status: :bad_request
    end
  end

  def show
    education_id = params["id"]
    education = Education.find_by(id: education_id)
    render json: education.as_json 
  end

  def update
    education_id = params["id"]
    education = Education.find_by(id: education_id)
    education.start_date = params["start_date"] || education.start_date,
    education.end_date = params["end_date"] || education.end_date,
    education.job_title = params["job_title"] || education.job_title,
    education.company_name = params["company_name"] || education.company_name,
    education.details = params["details"] || education.details,
    if education.save
      render json: education.as_json
    else
      render json: {error: education.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    education_id = params["id"]
    education = Education.find_by(id: education_id)
    education.destroy
    render json: {message: "we don't need no education"}
  end
end
