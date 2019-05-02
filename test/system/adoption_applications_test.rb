require "application_system_test_case"

class AdoptionApplicationsTest < ApplicationSystemTestCase
  setup do
    @adoption_application = adoption_applications(:one)
  end

  test "visiting the index" do
    visit adoption_applications_url
    assert_selector "h1", text: "Adoption Applications"
  end

  test "creating a Adoption application" do
    visit adoption_applications_url
    click_on "New Adoption Application"

    fill_in "Additional information", with: @adoption_application.additional_information
    fill_in "Address", with: @adoption_application.address
    fill_in "Assisting name", with: @adoption_application.assisting_name
    fill_in "Assisting phone", with: @adoption_application.assisting_phone
    check "Behavior advice" if @adoption_application.behavior_advice
    check "Breed research" if @adoption_application.breed_research
    fill_in "Cell phone", with: @adoption_application.cell_phone
    fill_in "City", with: @adoption_application.city
    fill_in "Current address length", with: @adoption_application.current_address_length
    fill_in "Current vet name", with: @adoption_application.current_vet_name
    fill_in "Current vet phone", with: @adoption_application.current_vet_phone
    fill_in "Day stay", with: @adoption_application.day_stay
    fill_in "Email", with: @adoption_application.email
    fill_in "Emergency care", with: @adoption_application.emergency_care
    check "Emergency expense" if @adoption_application.emergency_expense
    check "Fence enclosed" if @adoption_application.fence_enclosed
    fill_in "Fence height", with: @adoption_application.fence_height
    fill_in "Fence type", with: @adoption_application.fence_type
    check "Future move" if @adoption_application.future_move
    check "General expense" if @adoption_application.general_expense
    fill_in "Hear about", with: @adoption_application.hear_about
    fill_in "Home type", with: @adoption_application.home_type
    fill_in "House training plan", with: @adoption_application.house_training_plan
    fill_in "Household adults", with: @adoption_application.household_adults
    fill_in "Household children", with: @adoption_application.household_children
    fill_in "Household other", with: @adoption_application.household_other
    fill_in "Landlord name", with: @adoption_application.landlord_name
    fill_in "Landlord phone", with: @adoption_application.landlord_phone
    check "Lease permit" if @adoption_application.lease_permit
    check "Lifetime commitment" if @adoption_application.lifetime_commitment
    fill_in "Moving plan", with: @adoption_application.moving_plan
    fill_in "Name", with: @adoption_application.name
    fill_in "Night stay", with: @adoption_application.night_stay
    check "Obedience class" if @adoption_application.obedience_class
    check "Obedience pay" if @adoption_application.obedience_pay
    check "Obedience recommend" if @adoption_application.obedience_recommend
    fill_in "Obedience recommend description", with: @adoption_application.obedience_recommend_description
    fill_in "Occupations", with: @adoption_application.occupations
    fill_in "Other pets", with: @adoption_application.other_pets
    fill_in "Out of home hours", with: @adoption_application.out_of_home_hours
    fill_in "Own rent", with: @adoption_application.own_rent
    fill_in "Past vet name", with: @adoption_application.past_vet_name
    fill_in "Past vet phone", with: @adoption_application.past_vet_phone
    fill_in "Pet age max", with: @adoption_application.pet_age_max
    fill_in "Pet age min", with: @adoption_application.pet_age_min
    fill_in "Pet books", with: @adoption_application.pet_books
    check "Pet failure" if @adoption_application.pet_failure
    fill_in "Pet gender", with: @adoption_application.pet_gender
    check "Pet restrictions" if @adoption_application.pet_restrictions
    fill_in "Pet restrictions description", with: @adoption_application.pet_restrictions_description
    fill_in "Pet size", with: @adoption_application.pet_size
    fill_in "Pet typical day", with: @adoption_application.pet_typical_day
    fill_in "Pet unwanted", with: @adoption_application.pet_unwanted
    check "Puppy class" if @adoption_application.puppy_class
    fill_in "References", with: @adoption_application.references
    fill_in "Relationship status", with: @adoption_application.relationship_status
    fill_in "State", with: @adoption_application.state
    fill_in "Vacation plans", with: @adoption_application.vacation_plans
    check "Volunteer visit" if @adoption_application.volunteer_visit
    fill_in "Why adopt", with: @adoption_application.why_adopt
    check "Work from home" if @adoption_application.work_from_home
    fill_in "Work phone", with: @adoption_application.work_phone
    fill_in "Zip", with: @adoption_application.zip
    click_on "Create Adoption application"

    assert_text "Adoption application was successfully created"
    click_on "Back"
  end

  test "updating a Adoption application" do
    visit adoption_applications_url
    click_on "Edit", match: :first

    fill_in "Additional information", with: @adoption_application.additional_information
    fill_in "Address", with: @adoption_application.address
    fill_in "Assisting name", with: @adoption_application.assisting_name
    fill_in "Assisting phone", with: @adoption_application.assisting_phone
    check "Behavior advice" if @adoption_application.behavior_advice
    check "Breed research" if @adoption_application.breed_research
    fill_in "Cell phone", with: @adoption_application.cell_phone
    fill_in "City", with: @adoption_application.city
    fill_in "Current address length", with: @adoption_application.current_address_length
    fill_in "Current vet name", with: @adoption_application.current_vet_name
    fill_in "Current vet phone", with: @adoption_application.current_vet_phone
    fill_in "Day stay", with: @adoption_application.day_stay
    fill_in "Email", with: @adoption_application.email
    fill_in "Emergency care", with: @adoption_application.emergency_care
    check "Emergency expense" if @adoption_application.emergency_expense
    check "Fence enclosed" if @adoption_application.fence_enclosed
    fill_in "Fence height", with: @adoption_application.fence_height
    fill_in "Fence type", with: @adoption_application.fence_type
    check "Future move" if @adoption_application.future_move
    check "General expense" if @adoption_application.general_expense
    fill_in "Hear about", with: @adoption_application.hear_about
    fill_in "Home type", with: @adoption_application.home_type
    fill_in "House training plan", with: @adoption_application.house_training_plan
    fill_in "Household adults", with: @adoption_application.household_adults
    fill_in "Household children", with: @adoption_application.household_children
    fill_in "Household other", with: @adoption_application.household_other
    fill_in "Landlord name", with: @adoption_application.landlord_name
    fill_in "Landlord phone", with: @adoption_application.landlord_phone
    check "Lease permit" if @adoption_application.lease_permit
    check "Lifetime commitment" if @adoption_application.lifetime_commitment
    fill_in "Moving plan", with: @adoption_application.moving_plan
    fill_in "Name", with: @adoption_application.name
    fill_in "Night stay", with: @adoption_application.night_stay
    check "Obedience class" if @adoption_application.obedience_class
    check "Obedience pay" if @adoption_application.obedience_pay
    check "Obedience recommend" if @adoption_application.obedience_recommend
    fill_in "Obedience recommend description", with: @adoption_application.obedience_recommend_description
    fill_in "Occupations", with: @adoption_application.occupations
    fill_in "Other pets", with: @adoption_application.other_pets
    fill_in "Out of home hours", with: @adoption_application.out_of_home_hours
    fill_in "Own rent", with: @adoption_application.own_rent
    fill_in "Past vet name", with: @adoption_application.past_vet_name
    fill_in "Past vet phone", with: @adoption_application.past_vet_phone
    fill_in "Pet age max", with: @adoption_application.pet_age_max
    fill_in "Pet age min", with: @adoption_application.pet_age_min
    fill_in "Pet books", with: @adoption_application.pet_books
    check "Pet failure" if @adoption_application.pet_failure
    fill_in "Pet gender", with: @adoption_application.pet_gender
    check "Pet restrictions" if @adoption_application.pet_restrictions
    fill_in "Pet restrictions description", with: @adoption_application.pet_restrictions_description
    fill_in "Pet size", with: @adoption_application.pet_size
    fill_in "Pet typical day", with: @adoption_application.pet_typical_day
    fill_in "Pet unwanted", with: @adoption_application.pet_unwanted
    check "Puppy class" if @adoption_application.puppy_class
    fill_in "References", with: @adoption_application.references
    fill_in "Relationship status", with: @adoption_application.relationship_status
    fill_in "State", with: @adoption_application.state
    fill_in "Vacation plans", with: @adoption_application.vacation_plans
    check "Volunteer visit" if @adoption_application.volunteer_visit
    fill_in "Why adopt", with: @adoption_application.why_adopt
    check "Work from home" if @adoption_application.work_from_home
    fill_in "Work phone", with: @adoption_application.work_phone
    fill_in "Zip", with: @adoption_application.zip
    click_on "Update Adoption application"

    assert_text "Adoption application was successfully updated"
    click_on "Back"
  end

  test "destroying a Adoption application" do
    visit adoption_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adoption application was successfully destroyed"
  end
end
