class FosterApplicationsController < ApplicationController
  before_action :set_foster_application, only: [:show, :edit, :update, :destroy]

  # GET /foster_applications
  # GET /foster_applications.json
  def index
    @foster_applications = FosterApplication.all
  end

  # GET /foster_applications/1
  # GET /foster_applications/1.json
  def show
  end

  # GET /foster_applications/new
  def new
    @foster_application = FosterApplication.new
  end

  # GET /foster_applications/1/edit
  def edit
  end

  # POST /foster_applications
  # POST /foster_applications.json
  def create
    @foster_application = FosterApplication.new(foster_application_params)

    respond_to do |format|
      if @foster_application.save
        format.html { redirect_to @foster_application, notice: 'Foster application was successfully created.' }
        format.json { render :show, status: :created, location: @foster_application }
      else
        format.html { render :new }
        format.json { render json: @foster_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foster_applications/1
  # PATCH/PUT /foster_applications/1.json
  def update
    respond_to do |format|
      if @foster_application.update(foster_application_params)
        format.html { redirect_to @foster_application, notice: 'Foster application was successfully updated.' }
        format.json { render :show, status: :ok, location: @foster_application }
      else
        format.html { render :edit }
        format.json { render json: @foster_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foster_applications/1
  # DELETE /foster_applications/1.json
  def destroy
    @foster_application.destroy
    respond_to do |format|
      format.html { redirect_to foster_applications_url, notice: 'Foster application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foster_application
      @foster_application = FosterApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foster_application_params
      params.require(:foster_application).permit(:name, :address, :city, :state, :zip, :email, :phone, :cell_phone, :hear_about, :why_volunteer, :phone_calls_interest, :home_visits_interest, :app_review_interest, :foster_interest, :fundraising_interest, :other_interest, :pet_name, :pet_type, :pet_age, :pet_sex, :pet_neutered, :aggression_issues, :aggression_explanation, :vet_hospital_info, :references, :foster_experience, :foster_experience_explanation, :family_allergies, :family_allergies_explanation, :number_in_home, :children_in_home, :children_ages, :primary_caretaker, :secondary_caretaker, :home_type, :own_home, :landlord_name, :landlord_phone, :pets_allowed, :fenced_yard, :where_foster_kept, :where_foster_sleep, :where_left_alone, :family_commitment, :signature, :date, :printed_name)
    end
end
