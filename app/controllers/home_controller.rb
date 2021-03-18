class HomeController < ApplicationController
  
  def page
    if instructor_signed_in?
      @instructor_profile = current_instructor.instructor_profile
      redirect_to @instructor_profile
    elsif user_signed_in?
      @user_profile = current_user.user_profile
      redirect_to @user_profile
    end
  end
end
