class CreateFosterApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :foster_applications do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.string :phone
      t.string :cell_phone
      t.text :hear_about
      t.string :why_volunteer
      t.boolean :phone_calls_interest
      t.boolean :home_visits_interest
      t.boolean :app_review_interest
      t.boolean :foster_interest
      t.boolean :fundraising_interest
      t.boolean :other_interest
      t.string :pet_name
      t.string :pet_type
      t.integer :pet_age
      t.string :pet_sex
      t.boolean :pet_neutered
      t.boolean :aggression_issues
      t.text :aggression_explanation
      t.text :vet_hospital_info
      t.text :references
      t.boolean :foster_experience
      t.text :foster_experience_explanation
      t.boolean :family_allergies
      t.text :family_allergies_explanation
      t.integer :number_in_home
      t.boolean :children_in_home
      t.integer :children_ages
      t.string :primary_caretaker
      t.string :secondary_caretaker
      t.string :home_type
      t.boolean :own_home
      t.string :landlord_name
      t.string :landlord_phone
      t.string :pets_allowed
      t.boolean :fenced_yard
      t.string :where_foster_kept
      t.string :where_foster_sleep
      t.string :where_left_alone
      t.boolean :family_commitment
      t.string :signature
      t.string :date
      t.string :printed_name

      t.timestamps
    end
  end
end
