class V1::SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills.as_json
  end

  def create
    skill = Skill.new(
      skill_name: params["skill_name"]
      )
    if skill.save
      render json: skill.as_json
    else
      render json: {error: skill.errors.full_messages}, status: :bad_request
    end
  end

  def show
    skill_id = params["id"]
    skill = Skill.find_by(id: skill_id)
    render json: skill.as_json
  end

  def update
    skill_id = params["id"]
    skill = Skill.find_by(id: skill_id)
    skill.skill_name = params["skill_name"] || skill.skill_name
    if skill.save
      render json: skill.as_json
    else
      render json: {error: skill.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    skill_id = params["id"]
    skill = Skill.find_by(id: skill_id)
    skill.destroy
    render json: {message: "Later skills..."}
  end
end
