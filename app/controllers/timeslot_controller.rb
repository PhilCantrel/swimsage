class TimeslotController < ApplicationController
    def mark_available
        @instructor_profile = current_instructor.instructor_profile
        @selected_timeslot = Timeslot.find(params[:timeslot_id])
        @selected_timeslot.update(available: true)
        redirect_to "#{url_for(@instructor_profile)}#timeconfig", notice: "Timeslot Marked as Available"
    end

    def mark_unavailable
        @instructor_profile = current_instructor.instructor_profile
        @selected_timeslot = Timeslot.find(params[:timeslot_id])
        @selected_timeslot.update(available: false)
        redirect_to "#{url_for(@instructor_profile)}#timeconfig", notice: "Timeslot Marked as Unavailable"
    end
    
end