require 'test_helper'

class FosterApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foster_application = foster_applications(:one)
  end

  test "should get index" do
    get foster_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_foster_application_url
    assert_response :success
  end

  test "should create foster_application" do
    assert_difference('FosterApplication.count') do
      post foster_applications_url, params: { foster_application: { : @foster_application., address: @foster_application.address, aggression_explanation: @foster_application.aggression_explanation, aggression_issues: @foster_application.aggression_issues, app_review_interest: @foster_application.app_review_interest, cell_phone: @foster_application.cell_phone, children_ages: @foster_application.children_ages, children_in_home: @foster_application.children_in_home, city: @foster_application.city, date: @foster_application.date, email: @foster_application.email, family_allergies: @foster_application.family_allergies, family_allergies_explanation: @foster_application.family_allergies_explanation, family_commitment: @foster_application.family_commitment, fenced_yard: @foster_application.fenced_yard, foster_experience: @foster_application.foster_experience, foster_experience_explanation: @foster_application.foster_experience_explanation, foster_interest: @foster_application.foster_interest, fundraising_interest: @foster_application.fundraising_interest, hear_about: @foster_application.hear_about, home_type: @foster_application.home_type, home_visits_interest: @foster_application.home_visits_interest, landlord_name: @foster_application.landlord_name, landlord_phone: @foster_application.landlord_phone, name: @foster_application.name, number_in_home: @foster_application.number_in_home, other_interest: @foster_application.other_interest, own_home: @foster_application.own_home, pet_age: @foster_application.pet_age, pet_name: @foster_application.pet_name, pet_neutered: @foster_application.pet_neutered, pet_sex: @foster_application.pet_sex, pet_type: @foster_application.pet_type, pets_allowed: @foster_application.pets_allowed, phone: @foster_application.phone, phone_calls_interest: @foster_application.phone_calls_interest, primary_caretaker: @foster_application.primary_caretaker, references: @foster_application.references, secondary_caretaker: @foster_application.secondary_caretaker, signature: @foster_application.signature, state: @foster_application.state, vet_hospital_info: @foster_application.vet_hospital_info, where_foster_kept: @foster_application.where_foster_kept, where_foster_sleep: @foster_application.where_foster_sleep, where_left_alone: @foster_application.where_left_alone, why_volunteer: @foster_application.why_volunteer, zip: @foster_application.zip } }
    end

    assert_redirected_to foster_application_url(FosterApplication.last)
  end

  test "should show foster_application" do
    get foster_application_url(@foster_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_foster_application_url(@foster_application)
    assert_response :success
  end

  test "should update foster_application" do
    patch foster_application_url(@foster_application), params: { foster_application: { : @foster_application., address: @foster_application.address, aggression_explanation: @foster_application.aggression_explanation, aggression_issues: @foster_application.aggression_issues, app_review_interest: @foster_application.app_review_interest, cell_phone: @foster_application.cell_phone, children_ages: @foster_application.children_ages, children_in_home: @foster_application.children_in_home, city: @foster_application.city, date: @foster_application.date, email: @foster_application.email, family_allergies: @foster_application.family_allergies, family_allergies_explanation: @foster_application.family_allergies_explanation, family_commitment: @foster_application.family_commitment, fenced_yard: @foster_application.fenced_yard, foster_experience: @foster_application.foster_experience, foster_experience_explanation: @foster_application.foster_experience_explanation, foster_interest: @foster_application.foster_interest, fundraising_interest: @foster_application.fundraising_interest, hear_about: @foster_application.hear_about, home_type: @foster_application.home_type, home_visits_interest: @foster_application.home_visits_interest, landlord_name: @foster_application.landlord_name, landlord_phone: @foster_application.landlord_phone, name: @foster_application.name, number_in_home: @foster_application.number_in_home, other_interest: @foster_application.other_interest, own_home: @foster_application.own_home, pet_age: @foster_application.pet_age, pet_name: @foster_application.pet_name, pet_neutered: @foster_application.pet_neutered, pet_sex: @foster_application.pet_sex, pet_type: @foster_application.pet_type, pets_allowed: @foster_application.pets_allowed, phone: @foster_application.phone, phone_calls_interest: @foster_application.phone_calls_interest, primary_caretaker: @foster_application.primary_caretaker, references: @foster_application.references, secondary_caretaker: @foster_application.secondary_caretaker, signature: @foster_application.signature, state: @foster_application.state, vet_hospital_info: @foster_application.vet_hospital_info, where_foster_kept: @foster_application.where_foster_kept, where_foster_sleep: @foster_application.where_foster_sleep, where_left_alone: @foster_application.where_left_alone, why_volunteer: @foster_application.why_volunteer, zip: @foster_application.zip } }
    assert_redirected_to foster_application_url(@foster_application)
  end

  test "should destroy foster_application" do
    assert_difference('FosterApplication.count', -1) do
      delete foster_application_url(@foster_application)
    end

    assert_redirected_to foster_applications_url
  end
end
