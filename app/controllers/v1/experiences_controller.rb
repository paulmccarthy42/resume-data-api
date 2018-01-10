class V1::ExperiencesController < ApplicationController

  def index
    experience = Experience.all 
    render json: experience.as_json
  end

  def create
    experience = Experience.new(
      start_date: params["start_date"],
      end_date: params["end_date"],
      job_title: params["job_title"],
      company_name: params["company_name"],
      details: params["details"],
      )
    if experience.save 
      render json: experience.as_json 
    else 
      render json: {error: experience.errors.full_messages}, status: :bad_request
    end
  end

  def show
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)
    render json: experience.as_json 
  end

  def update
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)
    experience.start_date = params["start_date"] || experience.start_date,
    experience.end_date = params["end_date"] || experience.end_date,
    experience.job_title = params["job_title"] || experience.job_title,
    experience.company_name = params["company_name"] || experience.company_name,
    experience.details = params["details"] || experience.details,
    if experience.save
      render json: experience.as_json
    else
      render json: {error: experience.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    experience_id = params["id"]
    experience = Experience.find_by(id: experience_id)
    experience.destroy
    render json: {message: "Experience has been deleted."}
  end
end
