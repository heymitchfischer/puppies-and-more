class StaticPagesController < ApplicationController
  def home
    
  end



  def contact
    
  end



  def about
    
  end



  def donate
    
  end

  def send_message
    ContactMailer.with(params).contact.deliver_now
  end


  def pets
    response = Petfinder::Client.get_adoptable_animals_by_organization("NJ499")
    @animals = response["animals"]
    p @animals[0]["breeds"]
    p @animals[0]["photos"][0]["small"]
  end
end
