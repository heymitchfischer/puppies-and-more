class AdoptionApplicationsController < ApplicationController
  before_action :set_adoption_application, only: [:show, :edit, :update, :destroy]

  # GET /adoption_applications
  # GET /adoption_applications.json
  def index
    @adoption_applications = AdoptionApplication.all
  end

  # GET /adoption_applications/1
  # GET /adoption_applications/1.json
  def show
  end

  # GET /adoption_applications/new
  def new
    @adoption_application = AdoptionApplication.new
  end

  # GET /adoption_applications/1/edit
  def edit
  end

  # POST /adoption_applications
  # POST /adoption_applications.json
  def create
    @adoption_application = AdoptionApplication.new(adoption_application_params)

    respond_to do |format|
      if @adoption_application.save
        ContactMailer.adopt.deliver_now
        format.html { redirect_to @adoption_application, notice: 'Adoption application was successfully created.' }
        format.json { render :show, status: :created, location: @adoption_application }
      else
        format.html { render :new }
        format.json { render json: @adoption_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adoption_applications/1
  # PATCH/PUT /adoption_applications/1.json
  def update
    respond_to do |format|
      if @adoption_application.update(adoption_application_params)
        format.html { redirect_to @adoption_application, notice: 'Adoption application was successfully updated.' }
        format.json { render :show, status: :ok, location: @adoption_application }
      else
        format.html { render :edit }
        format.json { render json: @adoption_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adoption_applications/1
  # DELETE /adoption_applications/1.json
  def destroy
    @adoption_application.destroy
    respond_to do |format|
      format.html { redirect_to adoption_applications_url, notice: 'Adoption application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption_application
      @adoption_application = AdoptionApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adoption_application_params
      params.require(:adoption_application).permit(:name, :address, :city, :state, :zip, :cell_phone, :work_phone, :email, :hear_about, :own_rent, :current_address_length, :future_move, :home_type, :lease_permit, :pet_restrictions, :pet_restrictions_description, :landlord_name, :landlord_phone, :volunteer_visit, :relationship_status, :household_adults, :household_children, :household_other, :occupations, :out_of_home_hours, :work_from_home, :why_adopt, :house_training_plan, :pet_unwanted, :behavior_advice, :other_pets, :pet_gender, :pet_size, :pet_age_min, :pet_age_max, :lifetime_commitment, :emergency_care, :day_stay, :night_stay, :fence_type, :fence_enclosed, :fence_height, :pet_typical_day, :vacation_plans, :pet_failure, :moving_plan, :emergency_expense, :general_expense, :puppy_class, :obedience_class, :pet_books, :breed_research, :obedience_recommend, :obedience_recommend_description, :obedience_pay, :current_vet_name, :current_vet_phone, :past_vet_name, :past_vet_phone, :references, :assisting_name, :assisting_phone, :additional_information)
    end
end
