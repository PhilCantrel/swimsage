class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  # GET /bookings or /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1 or /bookings/1.json
  def show
    @instructor = InstructorProfile.where(instructor_id: @booking.instructor_id).first
    @student = Student.find(@booking.student_id)
    @daytime_id = Timeslot.where(id: @booking.timeslot_id).first.daytime_id
    @dayandtime = Daytime.find(@daytime_id)
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @instructor = InstructorProfile.where(instructor_id: params[:instructor_id])
    @daytime_id = Timeslot.where(id: params[:timeslot_id]).first.daytime_id
    @dayandtime = Daytime.find(@daytime_id)
    weekday = @dayandtime.weekday.downcase
    @date= Date.today.next_occurring(weekday.to_sym)
    @cost = @instructor.first.rate
  end

  # GET /bookings/1/edit
  def edit
    @students = Student.where(user_id: current_user.id)
  end

  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1 or /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: "Booking was successfully updated." }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:instructor_id, :user_id, :student_id, :timeslot_id, :date, :cost)
    end
end
