module Accessible
    extend ActiveSupport::Concern
    included do
      before_action :check_user
    end
  
    protected
    def check_user
      if current_instructor
        flash.clear
        # if you have rails_admin. You can redirect anywhere really
        redirect_to("/instructor_profiles/#{current_instructor.id}") and return
      elsif current_user
        flash.clear
        # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
        redirect_to("/user_profiles/#{current_user.id}") and return
      end
    end
  end