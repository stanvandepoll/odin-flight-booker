# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  def thank_you_email
    PassengerMailer.thank_you_email(Passenger.last).deliver_now!
  end
end
