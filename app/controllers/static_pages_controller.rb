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
end
