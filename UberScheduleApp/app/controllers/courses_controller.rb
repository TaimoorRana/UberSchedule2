class CoursesController < ApplicationController
  layout false
  def index
    @courses = Course.order('position ASC')
  end

  def show
  end
end
