class ContactMailer < ApplicationMailer
  def contact
    @name = params[:name]
    @email = params[:email]
    @number = params[:number]
    @content = params[:content]
    mail(to: "mitchfischer6@gmail.com", subject: "Message from your website")
  end

  def adopt
    mail(to: "mitchfischer6@gmail.com")
  end

  def foster

  end
end
