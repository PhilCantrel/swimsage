class InstructorProfilesController < ApplicationController
  before_action :set_instructor_profile, only: %i[ show edit update destroy ]

  # GET /instructor_profiles or /instructor_profiles.json
  def index
    @instructor_profiles = InstructorProfile.all
  end

  # GET /instructor_profiles/1 or /instructor_profiles/1.json
  def show
  end

  # GET /instructor_profiles/new
  def new
    @instructor_profile = InstructorProfile.new
  end

  # GET /instructor_profiles/1/edit
  def edit
  end

  # POST /instructor_profiles or /instructor_profiles.json
  def create
    @instructor_profile = InstructorProfile.new(instructor_profile_params)

    respond_to do |format|
      if @instructor_profile.save
        format.html { redirect_to @instructor_profile, notice: "Instructor profile was successfully created." }
        format.json { render :show, status: :created, location: @instructor_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instructor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructor_profiles/1 or /instructor_profiles/1.json
  def update
    respond_to do |format|
      if @instructor_profile.update(instructor_profile_params)
        format.html { redirect_to @instructor_profile, notice: "Instructor profile was successfully updated." }
        format.json { render :show, status: :ok, location: @instructor_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instructor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructor_profiles/1 or /instructor_profiles/1.json
  def destroy
    @instructor_profile.destroy
    respond_to do |format|
      format.html { redirect_to instructor_profiles_url, notice: "Instructor profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor_profile
      @instructor_profile = @current_instructor.instructor_profile
    end

    # Only allow a list of trusted parameters through.
    def instructor_profile_params
      params.require(:instructor_profile).permit(:firstname, :lastname, :phone, :address, :rate)
    end
end
