class HomeController < ApplicationController
  
  def page
    if instructor_signed_in?
    @instructor_profile = current_instructor.instructor_profile
    redirect_to @instructor_profile
    end
  end
end
