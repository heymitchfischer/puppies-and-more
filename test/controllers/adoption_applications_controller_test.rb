require 'test_helper'

class AdoptionApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption_application = adoption_applications(:one)
  end

  test "should get index" do
    get adoption_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_adoption_application_url
    assert_response :success
  end

  test "should create adoption_application" do
    assert_difference('AdoptionApplication.count') do
      post adoption_applications_url, params: { adoption_application: { additional_information: @adoption_application.additional_information, address: @adoption_application.address, assisting_name: @adoption_application.assisting_name, assisting_phone: @adoption_application.assisting_phone, behavior_advice: @adoption_application.behavior_advice, breed_research: @adoption_application.breed_research, cell_phone: @adoption_application.cell_phone, city: @adoption_application.city, current_address_length: @adoption_application.current_address_length, current_vet_name: @adoption_application.current_vet_name, current_vet_phone: @adoption_application.current_vet_phone, day_stay: @adoption_application.day_stay, email: @adoption_application.email, emergency_care: @adoption_application.emergency_care, emergency_expense: @adoption_application.emergency_expense, fence_enclosed: @adoption_application.fence_enclosed, fence_height: @adoption_application.fence_height, fence_type: @adoption_application.fence_type, future_move: @adoption_application.future_move, general_expense: @adoption_application.general_expense, hear_about: @adoption_application.hear_about, home_type: @adoption_application.home_type, house_training_plan: @adoption_application.house_training_plan, household_adults: @adoption_application.household_adults, household_children: @adoption_application.household_children, household_other: @adoption_application.household_other, landlord_name: @adoption_application.landlord_name, landlord_phone: @adoption_application.landlord_phone, lease_permit: @adoption_application.lease_permit, lifetime_commitment: @adoption_application.lifetime_commitment, moving_plan: @adoption_application.moving_plan, name: @adoption_application.name, night_stay: @adoption_application.night_stay, obedience_class: @adoption_application.obedience_class, obedience_pay: @adoption_application.obedience_pay, obedience_recommend: @adoption_application.obedience_recommend, obedience_recommend_description: @adoption_application.obedience_recommend_description, occupations: @adoption_application.occupations, other_pets: @adoption_application.other_pets, out_of_home_hours: @adoption_application.out_of_home_hours, own_rent: @adoption_application.own_rent, past_vet_name: @adoption_application.past_vet_name, past_vet_phone: @adoption_application.past_vet_phone, pet_age_max: @adoption_application.pet_age_max, pet_age_min: @adoption_application.pet_age_min, pet_books: @adoption_application.pet_books, pet_failure: @adoption_application.pet_failure, pet_gender: @adoption_application.pet_gender, pet_restrictions: @adoption_application.pet_restrictions, pet_restrictions_description: @adoption_application.pet_restrictions_description, pet_size: @adoption_application.pet_size, pet_typical_day: @adoption_application.pet_typical_day, pet_unwanted: @adoption_application.pet_unwanted, puppy_class: @adoption_application.puppy_class, references: @adoption_application.references, relationship_status: @adoption_application.relationship_status, state: @adoption_application.state, vacation_plans: @adoption_application.vacation_plans, volunteer_visit: @adoption_application.volunteer_visit, why_adopt: @adoption_application.why_adopt, work_from_home: @adoption_application.work_from_home, work_phone: @adoption_application.work_phone, zip: @adoption_application.zip } }
    end

    assert_redirected_to adoption_application_url(AdoptionApplication.last)
  end

  test "should show adoption_application" do
    get adoption_application_url(@adoption_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_adoption_application_url(@adoption_application)
    assert_response :success
  end

  test "should update adoption_application" do
    patch adoption_application_url(@adoption_application), params: { adoption_application: { additional_information: @adoption_application.additional_information, address: @adoption_application.address, assisting_name: @adoption_application.assisting_name, assisting_phone: @adoption_application.assisting_phone, behavior_advice: @adoption_application.behavior_advice, breed_research: @adoption_application.breed_research, cell_phone: @adoption_application.cell_phone, city: @adoption_application.city, current_address_length: @adoption_application.current_address_length, current_vet_name: @adoption_application.current_vet_name, current_vet_phone: @adoption_application.current_vet_phone, day_stay: @adoption_application.day_stay, email: @adoption_application.email, emergency_care: @adoption_application.emergency_care, emergency_expense: @adoption_application.emergency_expense, fence_enclosed: @adoption_application.fence_enclosed, fence_height: @adoption_application.fence_height, fence_type: @adoption_application.fence_type, future_move: @adoption_application.future_move, general_expense: @adoption_application.general_expense, hear_about: @adoption_application.hear_about, home_type: @adoption_application.home_type, house_training_plan: @adoption_application.house_training_plan, household_adults: @adoption_application.household_adults, household_children: @adoption_application.household_children, household_other: @adoption_application.household_other, landlord_name: @adoption_application.landlord_name, landlord_phone: @adoption_application.landlord_phone, lease_permit: @adoption_application.lease_permit, lifetime_commitment: @adoption_application.lifetime_commitment, moving_plan: @adoption_application.moving_plan, name: @adoption_application.name, night_stay: @adoption_application.night_stay, obedience_class: @adoption_application.obedience_class, obedience_pay: @adoption_application.obedience_pay, obedience_recommend: @adoption_application.obedience_recommend, obedience_recommend_description: @adoption_application.obedience_recommend_description, occupations: @adoption_application.occupations, other_pets: @adoption_application.other_pets, out_of_home_hours: @adoption_application.out_of_home_hours, own_rent: @adoption_application.own_rent, past_vet_name: @adoption_application.past_vet_name, past_vet_phone: @adoption_application.past_vet_phone, pet_age_max: @adoption_application.pet_age_max, pet_age_min: @adoption_application.pet_age_min, pet_books: @adoption_application.pet_books, pet_failure: @adoption_application.pet_failure, pet_gender: @adoption_application.pet_gender, pet_restrictions: @adoption_application.pet_restrictions, pet_restrictions_description: @adoption_application.pet_restrictions_description, pet_size: @adoption_application.pet_size, pet_typical_day: @adoption_application.pet_typical_day, pet_unwanted: @adoption_application.pet_unwanted, puppy_class: @adoption_application.puppy_class, references: @adoption_application.references, relationship_status: @adoption_application.relationship_status, state: @adoption_application.state, vacation_plans: @adoption_application.vacation_plans, volunteer_visit: @adoption_application.volunteer_visit, why_adopt: @adoption_application.why_adopt, work_from_home: @adoption_application.work_from_home, work_phone: @adoption_application.work_phone, zip: @adoption_application.zip } }
    assert_redirected_to adoption_application_url(@adoption_application)
  end

  test "should destroy adoption_application" do
    assert_difference('AdoptionApplication.count', -1) do
      delete adoption_application_url(@adoption_application)
    end

    assert_redirected_to adoption_applications_url
  end
end
