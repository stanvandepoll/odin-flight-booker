class PassengerMailer < ApplicationMailer

  def thank_you_email(passenger)
    @passenger = passenger

    mail to: @passenger.email
  end
end
