class CoursesController < ApplicationController
  before_action :authenticate_coach!

  layout 'main'

  def index
    @courses = current_coach.courses.order(created_at: :desc)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(courses_params)
    @course.coach = current_coach

    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  private

  def courses_params
    params.require(:course).permit(:title, :description, :coach_id, attachments: [])
  end
end
