require "application_system_test_case"

class FosterApplicationsTest < ApplicationSystemTestCase
  setup do
    @foster_application = foster_applications(:one)
  end

  test "visiting the index" do
    visit foster_applications_url
    assert_selector "h1", text: "Foster Applications"
  end

  test "creating a Foster application" do
    visit foster_applications_url
    click_on "New Foster Application"

    fill_in "", with: @foster_application.
    fill_in "Address", with: @foster_application.address
    fill_in "Aggression explanation", with: @foster_application.aggression_explanation
    check "Aggression issues" if @foster_application.aggression_issues
    check "App review interest" if @foster_application.app_review_interest
    fill_in "Cell phone", with: @foster_application.cell_phone
    fill_in "Children ages", with: @foster_application.children_ages
    check "Children in home" if @foster_application.children_in_home
    fill_in "City", with: @foster_application.city
    fill_in "Date", with: @foster_application.date
    fill_in "Email", with: @foster_application.email
    check "Family allergies" if @foster_application.family_allergies
    fill_in "Family allergies explanation", with: @foster_application.family_allergies_explanation
    check "Family commitment" if @foster_application.family_commitment
    check "Fenced yard" if @foster_application.fenced_yard
    check "Foster experience" if @foster_application.foster_experience
    fill_in "Foster experience explanation", with: @foster_application.foster_experience_explanation
    check "Foster interest" if @foster_application.foster_interest
    check "Fundraising interest" if @foster_application.fundraising_interest
    fill_in "Hear about", with: @foster_application.hear_about
    fill_in "Home type", with: @foster_application.home_type
    check "Home visits interest" if @foster_application.home_visits_interest
    fill_in "Landlord name", with: @foster_application.landlord_name
    fill_in "Landlord phone", with: @foster_application.landlord_phone
    fill_in "Name", with: @foster_application.name
    fill_in "Number in home", with: @foster_application.number_in_home
    check "Other interest" if @foster_application.other_interest
    check "Own home" if @foster_application.own_home
    fill_in "Pet age", with: @foster_application.pet_age
    fill_in "Pet name", with: @foster_application.pet_name
    check "Pet neutered" if @foster_application.pet_neutered
    fill_in "Pet sex", with: @foster_application.pet_sex
    fill_in "Pet type", with: @foster_application.pet_type
    fill_in "Pets allowed", with: @foster_application.pets_allowed
    fill_in "Phone", with: @foster_application.phone
    check "Phone calls interest" if @foster_application.phone_calls_interest
    fill_in "Primary caretaker", with: @foster_application.primary_caretaker
    fill_in "References", with: @foster_application.references
    fill_in "Secondary caretaker", with: @foster_application.secondary_caretaker
    fill_in "Signature", with: @foster_application.signature
    fill_in "State", with: @foster_application.state
    fill_in "Vet hospital info", with: @foster_application.vet_hospital_info
    fill_in "Where foster kept", with: @foster_application.where_foster_kept
    fill_in "Where foster sleep", with: @foster_application.where_foster_sleep
    fill_in "Where left alone", with: @foster_application.where_left_alone
    fill_in "Why volunteer", with: @foster_application.why_volunteer
    fill_in "Zip", with: @foster_application.zip
    click_on "Create Foster application"

    assert_text "Foster application was successfully created"
    click_on "Back"
  end

  test "updating a Foster application" do
    visit foster_applications_url
    click_on "Edit", match: :first

    fill_in "", with: @foster_application.
    fill_in "Address", with: @foster_application.address
    fill_in "Aggression explanation", with: @foster_application.aggression_explanation
    check "Aggression issues" if @foster_application.aggression_issues
    check "App review interest" if @foster_application.app_review_interest
    fill_in "Cell phone", with: @foster_application.cell_phone
    fill_in "Children ages", with: @foster_application.children_ages
    check "Children in home" if @foster_application.children_in_home
    fill_in "City", with: @foster_application.city
    fill_in "Date", with: @foster_application.date
    fill_in "Email", with: @foster_application.email
    check "Family allergies" if @foster_application.family_allergies
    fill_in "Family allergies explanation", with: @foster_application.family_allergies_explanation
    check "Family commitment" if @foster_application.family_commitment
    check "Fenced yard" if @foster_application.fenced_yard
    check "Foster experience" if @foster_application.foster_experience
    fill_in "Foster experience explanation", with: @foster_application.foster_experience_explanation
    check "Foster interest" if @foster_application.foster_interest
    check "Fundraising interest" if @foster_application.fundraising_interest
    fill_in "Hear about", with: @foster_application.hear_about
    fill_in "Home type", with: @foster_application.home_type
    check "Home visits interest" if @foster_application.home_visits_interest
    fill_in "Landlord name", with: @foster_application.landlord_name
    fill_in "Landlord phone", with: @foster_application.landlord_phone
    fill_in "Name", with: @foster_application.name
    fill_in "Number in home", with: @foster_application.number_in_home
    check "Other interest" if @foster_application.other_interest
    check "Own home" if @foster_application.own_home
    fill_in "Pet age", with: @foster_application.pet_age
    fill_in "Pet name", with: @foster_application.pet_name
    check "Pet neutered" if @foster_application.pet_neutered
    fill_in "Pet sex", with: @foster_application.pet_sex
    fill_in "Pet type", with: @foster_application.pet_type
    fill_in "Pets allowed", with: @foster_application.pets_allowed
    fill_in "Phone", with: @foster_application.phone
    check "Phone calls interest" if @foster_application.phone_calls_interest
    fill_in "Primary caretaker", with: @foster_application.primary_caretaker
    fill_in "References", with: @foster_application.references
    fill_in "Secondary caretaker", with: @foster_application.secondary_caretaker
    fill_in "Signature", with: @foster_application.signature
    fill_in "State", with: @foster_application.state
    fill_in "Vet hospital info", with: @foster_application.vet_hospital_info
    fill_in "Where foster kept", with: @foster_application.where_foster_kept
    fill_in "Where foster sleep", with: @foster_application.where_foster_sleep
    fill_in "Where left alone", with: @foster_application.where_left_alone
    fill_in "Why volunteer", with: @foster_application.why_volunteer
    fill_in "Zip", with: @foster_application.zip
    click_on "Update Foster application"

    assert_text "Foster application was successfully updated"
    click_on "Back"
  end

  test "destroying a Foster application" do
    visit foster_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foster application was successfully destroyed"
  end
end
