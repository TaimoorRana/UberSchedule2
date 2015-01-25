class DemoController < ApplicationController
  layout false;
  def index
    
  end
  
  def hello
    @array = [1,2,3,4,5]
  end
  
  def schedule
    @courses = Course.all
  end
end
