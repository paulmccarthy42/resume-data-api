class V1::CapstonesController < ApplicationController
  def index
    capstones = Capstone.all 
    render json: capstones.as_json
  end

  def create
    capstone = Capstone.new(
      name: params["name"],
      description: params["description"],
      url: params["url"],
      screenshot: params["screenshot"],
      student_id: params["student_id"]
      )
    if capstone.save
      render json: capstone.as_json 
    else
      render json: {error: capstone.errors.full_messages}, status: :bad_request
    end 
  end

  def show
    capstone_id = params["id"]
    capstone = Capstone.find_by(id: capstone_id)
    render json: capstone.as_json 
  end

  def update
    capstone_id = params["id"]
    capstone = Capstone.find_by(id: capstone_id)
    capstone.name = params["name"],
    capstone.description = params["description"] || capstone.description,
    capstone.url = params["url"] || capstone.url,
    capstone.screenshot = params["screenshot"] || capstone.screenshot,
    capstone.student_id = params["student_id"] || capstone.student_id,   
    if capstone.save
      render json: capstone.as_json 
    else
      render json: {error: capstone.errors.full_messages}, status: :bad_request
    end 
  end

  def destroy
    capstone_id = params["id"]
    capstone = Capstone.find_by(id: capstone_id)
    capstone.destroy
    render json: {message: "Capstone has been destroyed."}
  end
end
