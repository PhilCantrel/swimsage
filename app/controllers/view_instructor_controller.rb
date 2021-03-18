class ViewInstructorController < ApplicationController
    before_action :authenticate_user!


    def all
        @instructors = InstructorProfile.all
    end

    def selected
    
    end

end
