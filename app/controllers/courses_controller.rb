class CoursesController < ApplicationController
  before_action :authenticate_coach!

  layout 'main'

  def index
    @courses = current_coach.courses.order(created_at: :desc)
  end

  def new
    @course = Course.new
  end
end
